<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�Ǿ����˻�����">
<@CommonQueryMacro.CommonQuery id="FjmzhAdd" init="false" submitMode="current" navigate="false">
	<table align="left">
		<tr valign="top" id="basicInformation" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="������Ϣ" fieldStr="accountnumber,closedaccount,duediligenceind,selfcertification,accountbalance,accountholdertype,openingfiname,payment" colNm=6/>
			</td>
		</tr>
		<tr valign="top" id="personal" style="text-align:center;display:none;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="����" fieldStr="ind_name,ind_gender,ind_address,ind_phoneno,ind_idtype,ind_idnumber,ind_rescountrycode,ind_tin,ind_explanation,ind_nationality,ind_birthinfo" colNm=6/>
			</td>
		</tr>
		<tr valign="top" id="organization" style="text-align:center;display:none;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="����" fieldStr="org_name,org_address,org_phoneno,org_rescountrycode,org_tin,org_explanation" colNm=6/>
			</td>
		</tr>
		<tr valign="top" id="controlPerson" style="text-align:center;display:none;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="������" fieldStr="con_name,con_ctrlgpersontype,con_nationality,con_address,con_rescountrycode,con_tin,con_explanation,con_birthinfo" colNm=6/>
			</td>
		</tr>
		<tr>
  		   	<td valign="CENTER">
				<left><@CommonQueryMacro.Button id= "btBack"/></left>&nbsp;
				<left><@CommonQueryMacro.Button id= "btSave"/></left>
  			</td>
		</tr> 
	</table>
</@CommonQueryMacro.CommonQuery>


<script language="javascript">
   
   	   //���ݲ�ͬ���˻������������ʾ��ͬ�ı���ģ��
	  function accountholdertype_DropDown_onSelect(dropDown,record, editor){
	  	var accountholdertype = record[0];
	 
	 	showOrHide(accountholdertype);
	  	
	  	return true;
	  }
   
   	  //��ʾ��������
	  function showOrHide(accountholdertype){
		if(accountholdertype == "CRS100"){
	    	$("tr[id=personal]").show();
	    	$("tr[id=controlPerson]").show();
	    	$("tr[id=organization]").hide();
	    }
	    
	    if(accountholdertype == "CRS101" || accountholdertype == "CRS102"){
	        $("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").show();
	    }
	    
	    if(accountholdertype == "CRS103"){
	    	$("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").hide();
	    }
	  }
   
   	 //�Ǿ�����Ϣ������֤
	 function btSave_onClickCheck(button) {
	  	var accountnumber = FjmzhAdd_dataset.getValue("accountnumber");
	    if(accountnumber == null || accountnumber == "" || accountnumber.length > 32){
	    	alert("�˺Ų���Ϊ������󳤶�Ϊ32.");
			return false;
	    }
	    
	    var closedaccount = FjmzhAdd_dataset.getValue("closedaccount");
	    if(closedaccount == null || closedaccount == ""){
	    	alert("�˺��Ƿ�ע��Ϊ��ѡ��.");
			return false;
	    }
	    
	    var selfcertification = FjmzhAdd_dataset.getValue("selfcertification");
	    if(selfcertification == null || selfcertification == ""){
	    	alert("�Ƿ�ȡ����֤����Ϊ��ѡ��.");
			return false;
	    }
	    
	    var duediligenceind = FjmzhAdd_dataset.getValue("duediligenceind");
	    if(duediligenceind == null || duediligenceind == ""){
	    	alert("�Ƿ��¿��ͻ�Ϊ��ѡ��.");
			return false;
	    }
	    
	    var accountbalance = FjmzhAdd_dataset.getValue("accountbalance");
	    if(accountbalance == null || accountbalance == "" || accountbalance.length >22){
	    	alert("�˻�����Ϊ������󳤶�Ϊ22.");
			return false;
	    }
	    
	    var accountholdertype = FjmzhAdd_dataset.getValue("accountholdertype");
	    if(accountholdertype == null || accountholdertype == ""){
	    	alert("�˻����������Ϊ��ѡ��.");
			return false;
	    }
	    
	    var openingfiname = FjmzhAdd_dataset.getValue("openingfiname");
	    if(openingfiname == null || openingfiname == ""){
	    	alert("�������н��ڻ������벻��Ϊ��.");
			return false;
	    }
	    
	    if(accountholdertype == "CRS100"){
	    	var pers = true;
	    	var cont = true;
	    	pers = personal_Check();
	    	if(!pers) return false;
	    	cont = controlPerson_Check();
	    	if(!cont) return false;
	    }
	    
	    if(accountholdertype == "CRS101" || accountholdertype == "CRS102"){
	    	var orgn = true;
	    	var cont = true;
	    	orgn = organization_Check();
	    	if(!orgn) return false;
	    	cont = controlPerson_Check();
	    	if(!cont) return false;
	    }
	    
	    if(accountholdertype == "CRS103"){
	    	var orgn = true;
	    	orgn = organization_Check();
	    	if(!orgn) return false;
	    }
	        
	  	//closeWin();
	  	return true;
	 }
	 
	 //�Ǿ��������Ϣ����������֤
	  function personal_Check(){
	  	
	  	var ind_name = FjmzhAdd_dataset.getValue("ind_name");
	  	if(ind_name == null || ind_name == ""){
	    	alert("��������Ϊ��.");
			return false;
	    }
	  	
	  	var ind_gender = FjmzhAdd_dataset.getValue("ind_gender");
	  	if(ind_gender == null || ind_gender == ""){
	  		alert("�Ա�Ϊ��ѡ��.");
			return false;
	  	}
	  	
	  	var ind_address = FjmzhAdd_dataset.getValue("ind_address");
	  	if(ind_address == null || ind_address == ""){
	  		alert("��ַ����Ϊ��.");
			return false;
	  	}
	  	
	  	var ind_phoneno = FjmzhAdd_dataset.getValue("ind_phoneno");
	  	if(ind_phoneno == null || ind_phoneno == "" || ind_phoneno.length > 20){
	  		alert("��ϵ�绰����Ϊ������󳤶�Ϊ20.");
			return false;
	  	}
	  	
	  	var ind_idtype = FjmzhAdd_dataset.getValue("ind_idtype");
	  	if(ind_idtype == null || ind_idtype == ""){
	  		alert("���֤������Ϊ��ѡ��.");
			return false;
	  	}
	  	
	  	var ind_idnumber = FjmzhAdd_dataset.getValue("ind_idnumber");
	  	if(ind_idnumber == null || ind_idnumber == ""){
	  		alert("���֤�����벻��Ϊ��.");
			return false;
	  	}
	  	
	  	var ind_rescountrycode = FjmzhAdd_dataset.getValue("ind_rescountrycode");
	  	if(ind_rescountrycode == null || ind_rescountrycode == ""){
	  		alert("˰�վ���������������벻��Ϊ��.");
			return false;
	  	}
	  	
	  	var ind_tin = FjmzhAdd_dataset.getValue("ind_tin");
	  	var ind_explanation = FjmzhAdd_dataset.getValue("ind_explanation");
	  	if(ind_tin == null || ind_tin == ""){
	  		if(ind_explanation == null || ind_explanation == ""){
	  			alert("��˰��ʶ���δ��д��ԭ�� ����.");
				return false;
	  		}
	  	}
	  	
	  	var ind_nationality = FjmzhAdd_dataset.getValue("ind_nationality");
	  	if(ind_nationality == null || ind_nationality == ""){
	  		alert("��������Ϊ��.");
			return false;
	  	}
	  	
	  	var ind_birthinfo = FjmzhAdd_dataset.getValue("ind_birthinfo");
	  	if(ind_birthinfo == null || ind_birthinfo == ""){
	  		alert("������Ϣ����Ϊ��.");
			return false;
	  	}
	  	return true;
	  }
	  //�Ǿ��������Ϣ����������֤
	  function organization_Check(){
	  
	  	var org_name = FjmzhAdd_dataset.getValue("org_name");
	  	if(org_name == null || org_name == ""){
	    	alert("�������Ʋ���Ϊ��.");
			return false;
	    }
	  	
	  	var org_address = FjmzhAdd_dataset.getValue("org_address");
	  	if(org_address == null || org_address == ""){
	  		alert("������ַ����Ϊ��.");
			return false;
	  	}
	  	
	  	var org_phoneno = FjmzhAdd_dataset.getValue("org_phoneno");
	  	if(org_phoneno == null || org_phoneno == "" || org_phoneno.length > 20){
	  		alert("�����绰����Ϊ������󳤶�Ϊ20.");
			return false;
	  	}
	  	
	  	var org_rescountrycode = FjmzhAdd_dataset.getValue("org_rescountrycode");
	  	if(org_rescountrycode == null || org_rescountrycode == ""){
	  		alert("˰�վ���������������벻��Ϊ��.");
			return false;
	  	}
	  	
	  	var org_tin = FjmzhAdd_dataset.getValue("org_tin");
	  	var org_explanation = FjmzhAdd_dataset.getValue("org_explanation");
	  	if(org_tin == null || org_tin == ""){
	  		if(org_explanation == null || org_explanation == ""){
	  			alert("��˰��ʶ���δ��д��ԭ�� ����.");
				return false;
	  		}
	  	}
	  	
	  	return true;
	  }
	  //�Ǿ����������Ϣ����������֤
	  function controlPerson_Check(){
	  
	  	var con_name = FjmzhAdd_dataset.getValue("con_name");
	  	if(con_name == null || con_name == ""){
	    	alert("��������������Ϊ��.");
			return false;
	    }
	  	
	  	var con_ctrlgpersontype = FjmzhAdd_dataset.getValue("con_ctrlgpersontype");
	  	if(con_ctrlgpersontype == null || con_ctrlgpersontype == ""){
	  		alert("����������Ϊ��ѡ��.");
			return false;
	  	}
	  	
	  	var con_nationality = FjmzhAdd_dataset.getValue("con_nationality");
	  	if(con_nationality == null || con_nationality == ""){
	  		alert("��������Ϊ��.");
			return false;
	  	}
	  	
	  	var con_address = FjmzhAdd_dataset.getValue("con_address");
	  	if(con_address == null || con_address == ""){
	  		alert("��ַ����Ϊ��.");
			return false;
	  	}
	  	
	  	var con_rescountrycode = FjmzhAdd_dataset.getValue("con_rescountrycode");
	  	if(con_rescountrycode == null || con_rescountrycode == ""){
	  		alert("˰�վ���������������벻��Ϊ��.");
			return false;
	  	}
	  	
	  	var con_tin = FjmzhAdd_dataset.getValue("con_tin");
	  	var con_explanation = FjmzhAdd_dataset.getValue("con_explanation");
	  	if(con_tin == null || con_tin == ""){
	  		if(con_explanation == null || con_explanation == ""){
	  			alert("��˰��ʶ���δ��д��ԭ�� ����.");
				return false;
	  		}
	  	}
	  	
	  	var con_birthinfo = FjmzhAdd_dataset.getValue("con_birthinfo");
	  	if(con_birthinfo == null || con_birthinfo == ""){
	  		alert("������Ϣ����Ϊ��.");
			return false;
	  	}
	  	
	  	return true;
	  }
	  
	 function btBack_onClick()
	 {
		window.location.href = "${contextPath}/fpages/dataaudit/ftl/FjmzhQuery.ftl";
	 }
	
</script>
</@CommonQueryMacro.page>

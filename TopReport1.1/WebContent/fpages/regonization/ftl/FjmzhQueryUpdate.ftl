<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�Ǿ����˻���ѯ�޸�">
<@CommonQueryMacro.CommonQuery id="FjmzhQueryUpdate" init="true" submitMode="all" navigate="false">
	<table align="left">
		<tr valign="top" id="basicInformation" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="������Ϣ" fieldStr="accountNumber,sClosedAccount,sDueDiligenceInd,sSelfSertification,iAccountBalance,sACC_currCode,sAccountHolderType,sOpeningFIName,sAccountType,sPaymentType,iPaymentAmnt,sPaymentAmntCurr,sResCountryCode" colNm=6/>
			</td>
		</tr>
		<tr valign="top" id="personal" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Button id= "btModGR"/><br/>
			</td>
		</tr>
		<tr valign="top" id="organization" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Button id= "btModJG"/><br/>
			</td>
		</tr>
		<tr valign="top" id="controlPerson" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Button id= "btModKZR"/><br/>
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
	//�鿴�޸ĸ�����Ϣ
	function btModGR_onClick(){
		var accountNumber = FjmzhQueryUpdate_dataset.getString("accountNumber");
		showWin("������Ϣ","${contextPath}/fpages/dataaudit/ftl/FjmzhQueryGR.ftl?griAccID="+accountNumber,null,null,window);
	}
	
	//�鿴�޸Ļ�����Ϣ
	function btModJG_onClick(){
		var accountNumber = FjmzhQueryUpdate_dataset.getString("accountNumber");
		showWin("������Ϣ","${contextPath}/fpages/dataaudit/ftl/FjmzhQueryJG.ftl?jgiAccID="+accountNumber,null,null,window);
	}
	
	//�鿴�޸Ŀ�������Ϣ
	function btModKZR_onClick(){
		var accountNumber = FjmzhQueryUpdate_dataset.getString("accountNumber");
		showWin("��������Ϣ","${contextPath}/fpages/dataaudit/ftl/FjmzhQueryKZR.ftl?kzriAccID="+accountNumber,null,null,window);
	}

	 
	 window.onload=function(){
	 	var sAccountHolderType = null;
		var actype = GetQueryString("sAccountHolderType");
		if(actype!=null) 
		{ 
			sAccountHolderType = decodeURIComponent(actype); 
			showOrHide(sAccountHolderType);
		}
	 }
	 
	 

	function GetQueryString(name) { 
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); 
		var r = window.location.search.substr(1).match(reg); 
		if (r!=null) return (r[2]); 
		return null; 
	}

	  //��ʾ��������
	  function showOrHide(sAccountHolderType){
	  
		if(sAccountHolderType == "CRS100"){
	    	$("tr[id=personal]").show();
	    	$("tr[id=controlPerson]").hide();
	    	$("tr[id=organization]").hide();
	    }
	    
	    if(sAccountHolderType == "CRS101"){
	        $("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").show();
	    }
	    
	    if(sAccountHolderType == "CRS102" || sAccountHolderType == "CRS103"){
	    	$("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").hide();
	    }
	  }

      function btSave_onClickCheck(button){
      	var accountNumber = FjmzhQueryUpdate_dataset.getValue("accountNumber");
	 	if(accountNumber == null || accountNumber == ""){
	    	alert("�˺�Ϊ����������󳤶�Ϊ32��");
			return false;
	    }
	    var sClosedAccount = FjmzhQueryUpdate_dataset.getValue("sClosedAccount");
	 	if(sClosedAccount == null || sClosedAccount == ""){
	    	alert("�˻�״̬Ϊ��ѡ�");
			return false;
	    }
	    var sDueDiligenceInd = FjmzhQueryUpdate_dataset.getValue("sDueDiligenceInd");
	 	if(sDueDiligenceInd == null || sDueDiligenceInd == ""){
	    	alert("�Ƿ��¿��ͻ�Ϊ��ѡ�");
			return false;
	    }
	    var sSelfSertification = FjmzhQueryUpdate_dataset.getValue("sSelfSertification");
	 	if(sSelfSertification == null || sSelfSertification == ""){
	    	alert("�Ƿ�ȡ����֤����Ϊ��ѡ�");
			return false;
	    }
	    var iAccountBalance = FjmzhQueryUpdate_dataset.getValue("iAccountBalance");
	 	if(iAccountBalance == null || iAccountBalance == ""){
	    	alert("�˻����Ϊ�����");
			return false;
	    }
	    var sACC_currCode = FjmzhQueryUpdate_dataset.getValue("sACC_currCode");
	 	if(sACC_currCode == null || sACC_currCode == ""){
	    	alert("ָ�����Ҵ���Ϊ��ѡ�");
			return false;
	    }
	    var AHType = FjmzhQueryUpdate_dataset.getValue("sAccountHolderType");
	 	if(AHType == null || AHType == ""){
	    	alert("�˻����������Ϊ��ѡ�");
			return false;
	    }
	    var sOpeningFIName = FjmzhQueryUpdate_dataset.getValue("sOpeningFIName");
	 	if(sOpeningFIName == null || sOpeningFIName == ""){
	    	alert("�����н��ڻ�������Ϊ�����");
			return false;
	    }
	 	var sAccountType = FjmzhQueryUpdate_dataset.getValue("sAccountType");
	 	if(sAccountType == null || sAccountType == ""){
	    	alert("�˻���������Ϊ��ѡ�");
			return false;
	    }
	 	var sResCountryCode = FjmzhQueryUpdate_dataset.getValue("sResCountryCode");
	 	if(sResCountryCode == null || sResCountryCode == ""){
	    	alert("˰�վ����������������Ϊ�����");
			return false;
	    }
	    
	    var iPaymentAmnt = FjmzhQueryUpdate_dataset.getValue("iPaymentAmnt");
	    var sPaymentAmntCurr = FjmzhQueryUpdate_dataset.getValue("sPaymentAmntCurr");
	    if(iPaymentAmnt != null && iPaymentAmnt != ""){
	    	if(sPaymentAmntCurr == null || sPaymentAmntCurr == ""){
	    		alert("�˻������� ��Ϊ��ʱ �˻�������� ������д��");
				return false;
	    	}
	    }
  		alert("����ɹ�");
		closeWin();
      }
	  
	  //���ݲ�ͬ���˻������������ʾ��ͬ�ı���ģ��
	  function sAccountHolderType_DropDown_onSelect(dropDown,record, editor){
	  	var sAccountHolderType = record[0];
	 
	 	showOrHide(sAccountHolderType);
	  	
	  	return true;
	  }
	  
	 function btBack_onClickCheck()
	 {
		closeWin();
	 }
	 
	
</script>
</@CommonQueryMacro.page>

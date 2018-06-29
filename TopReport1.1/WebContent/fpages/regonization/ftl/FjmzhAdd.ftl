<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�Ǿ����˻�����">
<@CommonQueryMacro.CommonQuery id="FjmzhAdd" init="false" submitMode="current" navigate="false">
	<table align="center" width="100%">
		<tr valign="top" id="basicInformation" style="text-align:center;">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="������Ϣ" fieldStr="accountNumber,sClosedAccount,sDueDiligenceInd,sSelfSertification,iAccountBalance,sACC_currCode,sAccountHolderType,sOpeningFIName,sAccountType,sPaymentType,iPaymentAmnt,sPaymentAmntCurr,sResCountryCode,sIssuedBy,sinType,TIN,report_status" colNm=6/>
			</td>
		</tr>
		<tr valign="top" id="personal" style="text-align:center;display:none;">
			<td valign="top" align="center">
				<@CommonQueryMacro.Button id= "btAdd"/><br/>
			</td>
		</tr>
		<tr valign="top" id="organization" style="text-align:center;display:none;">
			<td valign="top">
				<@CommonQueryMacro.Button id= "btAdd1"/><br/>
			</td>
		</tr>
		<tr valign="top" id="controlPerson" style="text-align:center;display:none;">
			<td valign="top">
				<@CommonQueryMacro.Button id= "btAdd2"/>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowGR" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
	        			  fieldStr="griAccID,grGender,grPhoneNo,grIDType,grIDNumber,grBirthDate,grBirthCity,grBirthCountryCode,grFormerCountryName,grIssuedBy,grsinType,grTIN,grExplanation,grNationality" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveGR"/>&nbsp;&nbsp;
	      				<@CommonQueryMacro.Button id= "btAddGRXM"/>&nbsp;&nbsp;
	      				<@CommonQueryMacro.Button id= "btAddGRDZ"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowJG" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
	        			  fieldStr="jgiAccID,jgPhoneNo,jgNameType,jgOrganisationNameEN,jgOrganisationNameCN,jgIssuedBy,jgsinType,jgTIN,jgExplanation" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveJG"/>&nbsp;&nbsp;
	      				<@CommonQueryMacro.Button id= "btAddJGDZ"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowKZR" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="��������Ϣ����"
	        			  fieldStr="kzriAccID,kzrCtrlgPersonType,kzrdBirthDate,kzrBirthCity,kzrBirthCountryCode,kzrFormerCountryName,kzrNationality,kzrResCountryCode,kzrIssuedBy,kzrsinType,kzrTIN,kzrExplanation" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveKZR"/>&nbsp;&nbsp;
	      				<@CommonQueryMacro.Button id= "btAddKXM"/>&nbsp;&nbsp;
	      				<@CommonQueryMacro.Button id= "btAddKDZ"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowDZ" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="��ַ��Ϣ����"
	        			  fieldStr="diAccID,slegalAddressType,sCountryCode,sAddressEN_AddressFreeEN,sAddressFixEN_CityEN,sAddressFixEN_Street,sAddressFixEN_BuildingIden,sAddressFixEN_SuiteIdentifier,sAddressFixEN_FloorIdentifier,sAddressFixEN_DistrictName,sAddressFixEN_POB,sAddressFixEN_PostCode,sAddressFixEN_CountrySubentity,sAddressCN_sAddressFreeCN,sAddressFixCN_Province,sAddressFixCN_CityCN,sAddressFixCN_DistrictName,sAddressFixCN_PostCode,dStyle" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveDZ"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowXM" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
	        			  fieldStr="xiAccID,xNameType,xLastName,xMiddleName,xFirstName,xNameCN,xPrecedingTitle,xTitle,xNamePrefix,xGenerationIdentifier,xSuffix,xGeneralSuffix,xStyle" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveXM"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
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
	  var gflag = false;
	  var jflag = false;
	  var kflag = false;
	  var gxflag = false;
	  var gdflag = false;
	  var jdflag = false;
	  var kxflag = false;
	  var kdflag = false;
   
   	  //���ݲ�ͬ���˻������������ʾ��ͬ�ı���ģ��
	  function sAccountHolderType_DropDown_onSelect(dropDown,record, editor){
	  	var accountholdertype = record[0];
	 
	 	showOrHide(accountholdertype);
	  	
	  	return true;
	  }
   
   	  //��ʾ��������
	  function showOrHide(accountholdertype){
		if(accountholdertype == "CRS100"){
	    	$("tr[id=personal]").show();
	    	$("tr[id=controlPerson]").hide();
	    	$("tr[id=organization]").hide();
	    }
	    
	    if(accountholdertype == "CRS101"){
	        $("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").show();
	    }
	    
	    if(accountholdertype == "CRS103" || accountholdertype == "CRS102"){
	    	$("tr[id=personal]").hide();
	    	$("tr[id=organization]").show();
	    	$("tr[id=controlPerson]").hide();
	    }
	  }  
	  
	 function btBack_onClick()
	 {
		window.location.href = "${contextPath}/fpages/dataaudit/ftl/FjmzhQuery.ftl";
	 }
	 
	 //�򿪸�����Ϣ��ӵ���
	 function btAdd_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    if(accountNumber == null || accountNumber == "" || accountNumber.length > 32){
	    	alert("�˺Ų���Ϊ������󳤶�Ϊ32.");
			return false;
	    }
	    FjmzhAdd_dataset.setValue("griAccID", accountNumber);
	 	subwindow_signWindowGR.show();
	 }
	 
	 //�򿪸���������Ϣ��ӵ���
	 function btAddGRXM_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    FjmzhAdd_dataset.setValue("xStyle", "01");
	    FjmzhAdd_dataset.setValue("xiAccID", accountNumber);
	    FjmzhAdd_dataset.setFieldReadOnly("xStyle",true);
	    //��ʱ��ʼ������
	    clear_subwindow_signWindowXM();
	 	subwindow_signWindowXM.show();
	 }
	 
	 //�򿪸��˵�ַ��Ϣ��ӵ���
	 function btAddGRDZ_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    var dStyle = "01";
	    FjmzhAdd_dataset.setValue("dStyle", dStyle);
	    FjmzhAdd_dataset.setValue("diAccID", accountNumber);
	    clear_subwindow_signWindowDZ();
	 	subwindow_signWindowDZ.show();
	 }
	 
	 //�򿪻�����Ϣ��ӵ���
	 function btAdd1_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	 	if(accountNumber == null || accountNumber == "" || accountNumber.length > 32){
	    	alert("�˺Ų���Ϊ������󳤶�Ϊ32.");
			return false;
	    }
	    FjmzhAdd_dataset.setValue("jgiAccID", accountNumber);
	 	subwindow_signWindowJG.show();
	 }
	 
	 //�򿪻�����ַ��Ϣ��ӵ���
	 function btAddJGDZ_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    var dStyle = "02";
	    FjmzhAdd_dataset.setValue("dStyle", dStyle);
	    FjmzhAdd_dataset.setValue("diAccID", accountNumber);
	    clear_subwindow_signWindowDZ();
	 	subwindow_signWindowDZ.show();
	 }
	 
	 //�򿪿�������Ϣ��ӵ���
	 function btAdd2_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	 	if(accountNumber == null || accountNumber == "" || accountNumber.length > 32){
	    	alert("�˺Ų���Ϊ������󳤶�Ϊ32.");
			return false;
	    }
	    FjmzhAdd_dataset.setValue("kzriAccID", accountNumber);
	 	subwindow_signWindowKZR.show();
	 }
	 
	 //�򿪿�����������Ϣ��ӵ���
	 function btAddKXM_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    var xStyle = "02";
	    FjmzhAdd_dataset.setValue("xStyle", xStyle);
	    FjmzhAdd_dataset.setValue("xiAccID", accountNumber);
	    FjmzhAdd_dataset.setFieldReadOnly("xStyle",true);
	    clear_subwindow_signWindowXM();
	 	subwindow_signWindowXM.show();
	 }
	 
	 //�򿪿����˵�ַ��Ϣ��ӵ���
	 function btAddKDZ_onClick()
	 {
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	    var dStyle = "03";
	    FjmzhAdd_dataset.setValue("dStyle", dStyle);
	    FjmzhAdd_dataset.setValue("diAccID", accountNumber);
	    clear_subwindow_signWindowDZ();
	 	subwindow_signWindowDZ.show();
	 }
	 
	 //����������ʼ��
	 function clear_subwindow_signWindowXM(){
	    FjmzhAdd_dataset.setValue("xNameType","OECD202");
	    FjmzhAdd_dataset.setValue("xLastName","");
	    FjmzhAdd_dataset.setValue("xMiddleName","");
	    FjmzhAdd_dataset.setValue("xFirstName","");
	    FjmzhAdd_dataset.setValue("xNameCN","");
	    FjmzhAdd_dataset.setValue("xPrecedingTitle","");
	    FjmzhAdd_dataset.setValue("xTitle","");
	    FjmzhAdd_dataset.setValue("xNamePrefix","");
	    FjmzhAdd_dataset.setValue("xGenerationIdentifier","");
	    FjmzhAdd_dataset.setValue("xSuffix","");
	    FjmzhAdd_dataset.setValue("xGeneralSuffix","");
	 }
	 
	 //��ַ������ʼ��
	 function clear_subwindow_signWindowDZ(){
	    FjmzhAdd_dataset.setValue("slegalAddressType","");
	    FjmzhAdd_dataset.setValue("sCountryCode","");
	    FjmzhAdd_dataset.setValue("sAddressEN_AddressFreeEN","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_CityEN","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_Street","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_BuildingIden","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_SuiteIdentifier","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_FloorIdentifier","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_DistrictName","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_POB","");
	    FjmzhAdd_dataset.setValue("sAddressFixEN_PostCode","");
	   	FjmzhAdd_dataset.setValue("sAddressFixEN_CountrySubentity","");
	    FjmzhAdd_dataset.setValue("sAddressCN_sAddressFreeCN","");
	    FjmzhAdd_dataset.setValue("sAddressFixCN_Province","");
	    FjmzhAdd_dataset.setValue("sAddressFixCN_CityCN","");
	    FjmzhAdd_dataset.setValue("sAddressFixCN_DistrictName","");
	    FjmzhAdd_dataset.setValue("sAddressFixCN_PostCode","");
	 }
	 
	 	 //������Ϣ������֤������
	 function btSave_onClickCheck(button){
	 	var accountNumber = FjmzhAdd_dataset.getValue("accountNumber");
	 	if(accountNumber == null || accountNumber == ""){
	    	alert("�˺�Ϊ����������󳤶�Ϊ32��");
			return false;
	    }
	    var sClosedAccount = FjmzhAdd_dataset.getValue("sClosedAccount");
	 	if(sClosedAccount == null || sClosedAccount == ""){
	    	alert("�˻�״̬Ϊ��ѡ�");
			return false;
	    }
	    var sDueDiligenceInd = FjmzhAdd_dataset.getValue("sDueDiligenceInd");
	 	if(sDueDiligenceInd == null || sDueDiligenceInd == ""){
	    	alert("�Ƿ��¿��ͻ�Ϊ��ѡ�");
			return false;
	    }
	    var sSelfSertification = FjmzhAdd_dataset.getValue("sSelfSertification");
	 	if(sSelfSertification == null || sSelfSertification == ""){
	    	alert("�Ƿ�ȡ����֤����Ϊ��ѡ�");
			return false;
	    }
	    var iAccountBalance = FjmzhAdd_dataset.getValue("iAccountBalance");
	 	if(iAccountBalance == null || iAccountBalance == ""){
	    	alert("�˻����Ϊ�����");
			return false;
	    }
	    var sACC_currCode = FjmzhAdd_dataset.getValue("sACC_currCode");
	 	if(sACC_currCode == null || sACC_currCode == ""){
	    	alert("ָ�����Ҵ���Ϊ��ѡ�");
			return false;
	    }
	    var AHType = FjmzhAdd_dataset.getValue("sAccountHolderType");
	 	if(AHType == null || AHType == ""){
	    	alert("�˻����������Ϊ��ѡ�");
			return false;
	    }
	    var sOpeningFIName = FjmzhAdd_dataset.getValue("sOpeningFIName");
	 	if(sOpeningFIName == null || sOpeningFIName == ""){
	    	alert("�����н��ڻ�������Ϊ�����");
			return false;
	    }
	 	var sAccountType = FjmzhAdd_dataset.getValue("sAccountType");
	 	if(sAccountType == null || sAccountType == ""){
	    	alert("�˻���������Ϊ��ѡ�");
			return false;
	    }
	 	var sResCountryCode = FjmzhAdd_dataset.getValue("sResCountryCode");
	 	if(sResCountryCode == null || sResCountryCode == ""){
	    	alert("˰�վ����������������Ϊ�����");
			return false;
	    }
	    
	    if(AHType == "CRS100"){
	    	if(!gflag){
		 		alert("������д������Ϣ��");
		 		return false;
	 		}
	    }
	    
	    if(AHType == "CRS101"){
	        if(!jflag){
		 		alert("������д������Ϣ��");
		 		return false;
		 	}
		 	if(!kflag){
		 		alert("������д��������Ϣ��");
		 		return false;
		 	}
	    }
	    
	    if(AHType == "CRS103" || AHType == "CRS102"){
	    	if(!jflag){
		 		alert("������д������Ϣ��");
		 		return false;
		 	}
	    }
	 }
	 //������Ϣ��֤������
	 function btSaveGR_onClickCheck(button){
	 	if(!gxflag){
	 		alert("������д����������Ϣ��");
	 		return false;
	 	}
	 	if(!gdflag){
	 		alert("������д���˵�ַ��Ϣ��");
	 		return false;
	 	}
	 }
	 //������Ϣ��֤������
	 function btSaveJG_onClickCheck(button){
	 	if(!jdflag){
	 		alert("������д������ַ��Ϣ��");
	 		return false;
	 	}
	 }
	 //��������Ϣ��֤������
	 function btSaveKZR_onClickCheck(button){
	 	if(!kxflag){
	 		alert("������д������������Ϣ��");
	 		return false;
	 	}
	 	if(!kdflag){
	 		alert("������д�����˵�ַ��Ϣ��");
	 		return false;
	 	}
	 }
	 
	 function btSaveGR_postSubmit(button) {
		button.url="#";
		subwindow_signWindowGR.close();
		gflag = true;
		$("#btAdd").hide();
		//flushCurrentPage();
		alert("����ɹ���");
	 }
	 
	 function btSaveJG_postSubmit(button) {
		button.url="#";
		subwindow_signWindowJG.close();
		jflag = true;
		$("#btAdd1").hide();
		//flushCurrentPage();
		alert("����ɹ���");
	 }
	 
	 function btSaveKZR_postSubmit(button) {
		button.url="#";
		subwindow_signWindowKZR.close();
		kflag = true;
		$("#btAdd2").hide();
		//flushCurrentPage();
		alert("����ɹ���");
	 }
	 
	 function btSaveXM_postSubmit(button) {
	 	var xStyle = FjmzhAdd_dataset.getValue("xStyle");
		button.url="#";
		subwindow_signWindowXM.close();
		//�����Ӧ�����ɹ��󽫱�ʶ��Ϊtrue
		if(xStyle == "01"){
			gxflag = true;
			$("#btAddGRXM").hide();
		}
		if(xStyle == "02"){
			kxflag = true;
			$("#btAddKXM").hide();
		}
		//FjmzhAdd_dataset.setFieldReadOnly("xStyle",false);
		//flushCurrentPage();
		alert("����ɹ���");
	 }
	 
	 function btSaveDZ_postSubmit(button) {
	 	var dStyle = FjmzhAdd_dataset.getValue("dStyle");
		button.url="#";
		subwindow_signWindowDZ.close();
		//�����Ӧ��ַ�ɹ��󽫱�ʶ��Ϊtrue
		if(dStyle == "01"){
			gdflag = true;
			$("#btAddGRDZ").hide();
		}
		if(dStyle == "02"){
			jdflag = true;
			$("#btAddJGDZ").hide();
		}
		if(dStyle == "03"){
			kdflag = true;
			$("#btAddKDZ").hide();
		}
		
		//FjmzhAdd_dataset.setFieldReadOnly("dStyle",false);
		//flushCurrentPage();
		alert("����ɹ���");
	 }
	
</script>
</@CommonQueryMacro.page>

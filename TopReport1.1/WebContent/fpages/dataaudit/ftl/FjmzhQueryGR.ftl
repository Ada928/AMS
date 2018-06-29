<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="FjmzhQueryGR" init="true" submitMode="all" navigate="false">
<table width="100%">
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btModXM,-,btModDZ,-,btBack"  fieldStr="select[40],griAccID,grGender,grIDType,grIDNumber,grBirthDate,grFormerCountryName,operation"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
        			  fieldStr="griAccID,grGender,grPhoneNo,grIDType,grIDNumber,grBirthDate,grBirthCity,grBirthCountryCode,grFormerCountryName,grIssuedBy,grsinType,grTIN,grExplanation,grNationality" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSave"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindowEdit" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="������Ϣ�޸�"
        			  fieldStr="griAccID,grGender,grPhoneNo,grIDType,grIDNumber,grBirthDate,grBirthCity,grBirthCountryCode,grFormerCountryName,grIssuedBy,grsinType,grTIN,grExplanation,grNationality" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSaveEdit"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">

	var style = "01";
	//�鿴�޸ĵ�ַ��Ϣ
	function btModDZ_onClick(){
		var griAccID = FjmzhQueryGR_dataset.getString("griAccID");
		showWin("��ַ��Ϣ","${contextPath}/fpages/dataaudit/ftl/FjmzhQueryDZ.ftl?diAccID="+griAccID+"&dStyle="+style,null,null,window);
	}
	
	//�鿴�޸�������Ϣ
	function btModXM_onClick(){
		var griAccID = FjmzhQueryGR_dataset.getString("griAccID");
		showWin("������Ϣ","${contextPath}/fpages/dataaudit/ftl/FjmzhQueryXM.ftl?xiAccID="+griAccID+"&xStyle="+style,null,null,window);
	}

	//��λһ�м�¼
	function locate(griAccID) {
		var record = FjmzhQueryGR_dataset.find(["griAccID"],[griAccID]);
		if(record) {
			FjmzhQueryGR_dataset.setRecord(record);
		}
	}
	//ϵͳˢ�µ�Ԫ��
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			var griAccID = record.getValue("griAccID");
			cell.innerHTML="<center><a href=\"JavaScript:showDetailGR('"+griAccID+"')\">�޸�</a></center>";
		}else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
			
	}

	
	var name = null;
	window.onload=function(){
		var griAccID = GetQueryString("griAccID");
		if(griAccID!=null) 
		{ 
			name = decodeURIComponent(griAccID);
		}
	}

	function GetQueryString(name) { 
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); 
		var r = window.location.search.substr(1).match(reg); 
		if (r!=null) return (r[2]); 
		return null; 
	}
	
	function btNew_onClick(button){
		FjmzhQueryGR_dataset.setValue("griAccID",name);
		FjmzhQueryGR_dataset.setFieldReadOnly("griAccID",true);
		subwindow_signWindow.show();  
	}
	
	//�޸�
	function showDetailGR(griAccID){
		locate(griAccID);
		FjmzhQueryGR_dataset.setFieldReadOnly("griAccID",true);
		subwindow_signWindowEdit.show();  
	}
	
	
	function btSave_postSubmit(button)
	  {
		button.url="#";
		//alert("����ɹ�");
		subwindow_signWindow.hide();
		FjmzhQueryGR_dataset.flushData(FjmzhQueryGR_dataset.pageIndex);
	  }
	
	function signWindow_floatWindow_beforeClose(subwindow){
		
		 FjmzhQueryGR_dataset.cancelRecord();
		 return true;
	}
		
	function signWindow_floatWindow_beforeHide(subwindow){
		return signWindow_floatWindow_beforeClose(subwindow);
	}
function btBack_onClickCheck()
{
	closeWin();
}
	
	//�����ˢ�µ�ǰҳ
	function btSaveEdit_postSubmit(button) {
		button.url="#";
		subwindow_signWindowEdit.close();
		flushCurrentPage();
	}
</script>
</@CommonQueryMacro.page>

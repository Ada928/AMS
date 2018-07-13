<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="FjmzhQueryXM" init="true" submitMode="all" navigate="false">
<table width="100%">
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btBack"  fieldStr="select[40],xiAccID,xNameType,xLastName,xMiddleName,xTitle,xStyle,operation"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
        			  fieldStr="xiAccID,xNameType,xLastName,xMiddleName,xFirstName,xNameCN,xPrecedingTitle,xTitle,xNamePrefix,xGenerationIdentifier,xSuffix,xGeneralSuffix,xStyle" colNm=4/>
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
        			  fieldStr="xiAccID,xNameType,xLastName,xMiddleName,xFirstName,xNameCN,xPrecedingTitle,xTitle,xNamePrefix,xGenerationIdentifier,xSuffix,xGeneralSuffix,xStyle" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSaveEdit"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">


//��λһ�м�¼
	function locate(xiAccID) {
		var record = FjmzhQueryXM_dataset.find(["xiAccID"],[xiAccID]);
		if(record) {
			FjmzhQueryXM_dataset.setRecord(record);
		}
	}
	//ϵͳˢ�µ�Ԫ��
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			var xiAccID = record.getValue("xiAccID");
			cell.innerHTML="<center><a href=\"JavaScript:showDetailGR('"+xiAccID+"')\">�޸�</a></center>";
		}else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
			
	}


var name = null;
window.onload=function(){
	var xiAccID = GetQueryString("xiAccID");
	if(griAccID!=null) 
	{ 
		name = decodeURIComponent(xiAccID);
	}
}

function GetQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return (r[2]); 
	return null; 
}

function btNew_onClick(button){
	FjmzhQueryXM_dataset.setValue("xiAccID",name);
	FjmzhQueryXM_dataset.setFieldReadOnly("xiAccID",true);
	subwindow_signWindow.show();  
}

//�޸�
function showDetailGR(xiAccID){
	locate(xiAccID);
	FjmzhQueryXM_dataset.setFieldReadOnly("xiAccID",true);
	subwindow_signWindowEdit.show();  
}


function btSave_postSubmit(button)
  {
	button.url="#";
	//alert("����ɹ�");
	subwindow_signWindow.hide();
	FjmzhQueryXM_dataset.flushData(FjmzhQueryXM_dataset.pageIndex);
  }

function signWindow_floatWindow_beforeClose(subwindow){
	
	 FjmzhQueryXM_dataset.cancelRecord();
	 return true;
}
	
function signWindow_floatWindow_beforeHide(subwindow){
	return signWindow_floatWindow_beforeClose(subwindow);
}

function btBack_onClickCheck()
{
	closeWin();
}

function btSaveEdit_onClickCheck(button){
	var xLastName = FjmzhQueryXM_dataset.getValue("xLastName");
 	if(xLastName == null || xLastName == ""){
    	alert("����Ӣ�ģ�ƴ������  ����Ϊ�գ�");
		return false;
    }
    var xFirstName = FjmzhQueryXM_dataset.getValue("xFirstName");
 	if(xFirstName == null || xFirstName == ""){
    	alert("����Ӣ�ģ�ƴ������  ����Ϊ�գ�");
		return false;
    }
}

//�����ˢ�µ�ǰҳ
function btSaveEdit_postSubmit(button) {
	button.url="#";
	subwindow_signWindowEdit.close();
	flushCurrentPage();
}

//ˢ�µ�ǰҳ
function flushCurrentPage() {
	DszhQuery_dataset.flushData(DszhQuery_dataset.pageIndex);
}

</script>
</@CommonQueryMacro.page>

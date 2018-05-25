<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��˽�˻���ѯ����">
<@CommonQueryMacro.CommonQuery id="DszhAdd" init="false" submitMode="current" navigate="false">
	<table align="left">
		<tr valign="top">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="��˽�˻�����" fieldStr="ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb,ckryb,ckrdz,ckrdh,dlrmc,dlrsfzjzl,dlrsfzjhm,dlrgjdq,dlrdh,jrjgbm,zh,zhzl,zhlx,ylzhzh,ylzhjgbm,khrq,xhrq,zhzt,bz,sfjrbzk,sfshbzk,hsjg,wfhsyy,czff,xxlx,khqd,remarks,jlrq,ismodify,fgmjyqd,sflmzh,khdqdm" colNm=6/>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowLM" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="�����˻�����"
	        			  fieldStr="zh,ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveLM"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.FloatWindow id="signWindowKA" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
	      			<div align="center">
	      				<@CommonQueryMacro.Group id="group1" label="������Ϣ����"
	        			  fieldStr="zh,kh,kdqr,zhjz,xkrq,kzt" colNm=4/>
	        			 </br>
	      				<@CommonQueryMacro.Button id= "btSaveKA"/>
	      			</div>
	     		 </@CommonQueryMacro.FloatWindow>
			</td>
		</tr>	
		<tr>
  		   	<td valign="CENTER">
				<left><@CommonQueryMacro.Button id="btBack"/></left>&nbsp;
				<left><@CommonQueryMacro.Button id="btSave"/></left>
  			</td>
		</tr> 
	</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	  
	 function btBack_onClickCheck()
	 {
	 	//closeWin();
		
	 }
	 
	 function btBack_onClick()
	 {
	 	//closeWin();
		window.location.href = "${contextPath}/fpages/dataaudit/ftl/DszhQuery.ftl";
	 }
function btSave_postSubmit(button) {
		
		button.url="#";
		if(confirm("�Ƿ���������������ˣ�")){
			var zh = DszhAdd_dataset.getValue("zh");

			DszhAdd_dataset.setValue("zh",zh);
			subwindow_signWindowLM.show();	  
		}else {
			if(confirm("�Ƿ������ӽ�����Ϣ��")) {
				var zh = DszhAdd_dataset.getValue("zh");

				DszhAdd_dataset.setValue("zh",zh);
				subwindow_signWindowKA.show();
			}
		}
}


function btSaveKA_postSubmit(button) {
	button.url="#";
	subwindow_signWindowKA.close();
	
	if(confirm("�Ƿ������ӽ�����Ϣ��")) {
				var zh = DszhAdd_dataset.getValue("zh");

				DszhAdd_dataset.setValue("zh",zh);
				subwindow_signWindowKA.show();
			}
	
	flushCurrentPage();
}

function btSaveLM_postSubmit(button) {
	button.url="#";
	subwindow_signWindowLM.close();
	
	if(confirm("�Ƿ���������������ˣ�")){
			var zh = DszhAdd_dataset.getValue("zh");

			DszhAdd_dataset.setValue("zh",zh);
			subwindow_signWindowLM.show();
	}else{
		if(confirm("�Ƿ������ӽ�����Ϣ��")) {
		var zh = DszhAdd_dataset.getValue("zh");

		DszhAdd_dataset.setValue("zh",zh);
		subwindow_signWindowKA.show();
	}
	}
	flushCurrentPage();
	
	
}
</script>
</@CommonQueryMacro.page>

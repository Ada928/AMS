<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��˽�˻���ѯ�޸�">
<@CommonQueryMacro.CommonQuery id="DszhQueryUpdate" init="true" submitMode="all" navigate="false">
	<table align="left">
		<tr valign="top">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="��˽�˻���ѯ�޸�" fieldStr="ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb,ckryb,ckrdz,ckrdh,dlrmc,dlrsfzjzl,dlrsfzjhm,dlrgjdq,dlrdh,jrjgbm,zh,zhzl,zhlx,ylzhzh,ylzhjgbm,khrq,xhrq,zhzt,bz,sfjrbzk,sfshbzk,hsjg,wfhsyy,czff,xxlx,khqd,remarks,jlrq,fgmjyqd,sflmzh,khdqdm" colNm=6/>
			</td>
				</tr>
		<tr>
		    <td>
		       <left><@CommonQueryMacro.Button id= "btMod"/></left>
		        <left><@CommonQueryMacro.Button id= "btAdd"/></left>
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
     
	  
	 function btBack_onClickCheck()
	 {
	 	closeWin();
		//window.location.href = "${contextPath}/fpages/dataaudit/ftl/DszhQuery.ftl";
	 }
function btMod_onClick(){
	var zh = DszhQueryUpdate_dataset.getValue("zh");
	showUpdate(zh);
}
function btAdd_onClick(){
	var zh = DszhQueryUpdate_dataset.getValue("zh");
	showUpdate1(zh);
}
function showUpdate(zh){
	showWin("����Ϣ","${contextPath}/fpages/dataaudit/ftl/DszhQueryKA.ftl?zh="+zh,null,null,window);
	//window.location.href = "${contextPath}/fpages/regonization/ftl/DszhQueryLM.ftl?zh="+zh;
}
function showUpdate1(zh){
	showWin("�����˻���Ϣ","${contextPath}/fpages/dataaudit/ftl/DszhQueryLM.ftl?zh="+zh,null,null,window);
}
</script>
</@CommonQueryMacro.page>

<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��˽�˻���ѯ�޸�">
<@CommonQueryMacro.CommonQuery id="DszhQueryUpdate" init="true" submitMode="all" navigate="false">
	<table align="left">
		<tr valign="top">
			<td valign="top">
				<@CommonQueryMacro.Group id ="group1" label="��˽�˻���ѯ�޸�" fieldStr="xxlx,ckrxm,ckrsfzjzl,ckrsfzjhm,jrjgbm,zh,zhzl,bz,zhzt,jlrq,ismodify" colNm=4/>
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
     function btSave_postSubmit(button){
	     fieldReadOnlyStatus(true);      
	     DszhQueryUpdate_dataset.flushData(DszhQueryUpdate_dataset.pageIndex);
	     
	  }
	  function btSave_onClickCheck(button) {
	  	closeWin();
	  	return true;
	  }
	  
	 function btBack_onClickCheck()
	 {
		closeWin();
	 }
	
</script>
</@CommonQueryMacro.page>

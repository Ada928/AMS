package resource.bean.report;

// Generated 2012-8-14 9:48:50 by Hibernate Tools 3.4.0.CR1


/**
 * BiImportFileConfig generated by hbm2java
 */
public class BiImportFileConfig implements java.io.Serializable {

    private String id;
    private String fileName;
    private String tableName;
    private Integer batchNo;
    private String fileType;
    private String splitType;
    private String seperator;
    private String importTime;
    private Integer seqNo;
    private String updateType;
    private Integer startRow;
    private String endrowFlag;
    private Integer startColumn;
    private Integer endColumn;
    private Integer sheetNum;
    private String rowXpath;
    private String status;
    private String remark;
    private String mainFlag;
    private String fuid;
    private String fileOwner;
    
    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public Integer getBatchNo() {
        return this.batchNo;
    }

    public void setBatchNo(Integer batchNo) {
        this.batchNo = batchNo;
    }

    public String getFileType() {
        return this.fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getSplitType() {
        return this.splitType;
    }

    public void setSplitType(String splitType) {
        this.splitType = splitType;
    }

    public String getSeperator() {
        return this.seperator;
    }

    public void setSeperator(String seperator) {
        this.seperator = seperator;
    }

    public String getImportTime() {
        return this.importTime;
    }

    public void setImportTime(String importTime) {
        this.importTime = importTime;
    }

    public Integer getSeqNo() {
        return this.seqNo;
    }

    public void setSeqNo(Integer seqNo) {
        this.seqNo = seqNo;
    }

    public String getUpdateType() {
        return this.updateType;
    }

    public void setUpdateType(String updateType) {
        this.updateType = updateType;
    }

    public Integer getStartRow() {
        return this.startRow;
    }

    public void setStartRow(Integer startRow) {
        this.startRow = startRow;
    }

    public String getEndrowFlag() {
        return this.endrowFlag;
    }

    public void setEndrowFlag(String endrowFlag) {
        this.endrowFlag = endrowFlag;
    }

    public Integer getStartColumn() {
        return this.startColumn;
    }

    public void setStartColumn(Integer startColumn) {
        this.startColumn = startColumn;
    }

    public Integer getEndColumn() {
        return this.endColumn;
    }

    public void setEndColumn(Integer endColumn) {
        this.endColumn = endColumn;
    }

    public Integer getSheetNum() {
        return this.sheetNum;
    }

    public void setSheetNum(Integer sheetNum) {
        this.sheetNum = sheetNum;
    }

    public String getRowXpath() {
        return this.rowXpath;
    }

    public void setRowXpath(String rowXpath) {
        this.rowXpath = rowXpath;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

	public String getMainFlag() {
		return mainFlag;
	}

	public void setMainFlag(String mainFlag) {
		this.mainFlag = mainFlag;
	}

	public String getFuid() {
		return fuid;
	}

	public void setFuid(String fuid) {
		this.fuid = fuid;
	}

	public String getFileOwner() {
		return fileOwner;
	}

	public void setFileOwner(String fileOwner) {
		this.fileOwner = fileOwner;
	}

}

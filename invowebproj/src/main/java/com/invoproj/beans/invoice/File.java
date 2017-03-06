package com.invoproj.beans.invoice;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonProperty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "File")
public class File implements Serializable {
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "idFile")
	protected Long idFile;
	@Column(name = "fileName")
	protected String fileName;
	@Column(name = "fileFormat")
	protected String fileFormat;
	@Column(name = "size")
	protected Long size;
	@Column(name = "fileFor")
	protected String fileFor;
	@Column(name = "fileData")
	@Lob
	protected Blob fileData;
	@Column(name = "isActive")
	@JsonProperty
	protected boolean isActive;
	@Column(name = "createdOn")
	protected Date createdOn;
	@Column(name = "modifiedOn")
	protected Date modifiedOn;
	
	public File() { }

	public File(Long idFile, String fileName, String fileFormat, Long size, String fileFor, Blob fileData,
			boolean isActive, Date createdOn, Date modifiedOn) {
		this.idFile = idFile;
		this.fileName = fileName;
		this.fileFormat = fileFormat;
		this.size = size;
		this.fileFor = fileFor;
		this.fileData = fileData;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.modifiedOn = modifiedOn;
	}

	public Long getIdFile() {
		return idFile;
	}

	public void setIdFile(Long idFile) {
		this.idFile = idFile;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileFormat() {
		return fileFormat;
	}

	public void setFileFormat(String fileFormat) {
		this.fileFormat = fileFormat;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public String getFileFor() {
		return fileFor;
	}

	public void setFileFor(String fileFor) {
		this.fileFor = fileFor;
	}

	public Blob getFileData() {
		return fileData;
	}

	public void setFileData(Blob fileData) {
		this.fileData = fileData;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Date getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "File [idFile=" + idFile + ", fileName=" + fileName + ", fileFormat=" + fileFormat + ", size=" + size
				+ ", fileFor=" + fileFor + ", fileData=" + fileData + ", isActive=" + isActive + ", createdOn="
				+ createdOn + ", modifiedOn=" + modifiedOn + "]";
	}
	
}

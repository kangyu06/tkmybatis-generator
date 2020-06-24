package com.ess.framework.entity;

import lombok.Setter;

/**
 * 所有基类实体类
 * @author Luozelin
 *
 */
@Setter
public class AbstractEntity {

	/**
	 *  版本号
	 */
	private Long version;


	/**
	 * 获取版本号
	 *
	 * @return version - 版本号
	 */
	public Long getVersion() {
		return version;
	}

	/**
	 * 设置版本号
	 *
	 * @param version 版本号
	 */
	public void setVersion(Long version) {
		this.version = version;
	}
	
	
}

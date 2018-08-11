package com.drivingSchool.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
@Component
public class Uploads {
	private static Uploads uploads=null;
	private Uploads(){}
	public synchronized static Uploads getInstance()
	{
		if(null==uploads)
		{
			uploads=new Uploads();
		}
		return uploads;
	}
	/**
	 * 返回String数组,其中保存fileerror,filenull,filesucces,代表数量
	 * @param file 服务器临时文件
	 * @param contentType 文件类型
	 * @param path 保存路径
	 * @return
	 * @throws Exception
	 */
	public String[] executeUpload(File []file,String[] contentType,String path)
	{
		int lenth=1;
		if(null!=file)
		lenth=file.length;
		String [] result =new String[lenth];
		if(null!=file&&0<file.length)
		{
			for(int i=0;i<file.length;i++)
			{
				String filetype=contentType[i].substring(contentType[i].lastIndexOf("/")+1);
				filetype=filetype.toLowerCase();
				if("jpeg".equals(filetype)||"png".equals(filetype)||"jpg".equals(filetype))
				{
					UUID randomuuid=UUID.randomUUID();
					try
					{
						File newfile=new File(path+"/"+randomuuid+"."+filetype);
						FileInputStream in=new FileInputStream(file[i]);
						FileOutputStream out=new FileOutputStream(newfile);
						byte[] bytes=new byte[1024];
						while(in.read(bytes)!=-1)
						{
							out.write(bytes);
						}
						out.flush();
						out.close();
						result[i]=randomuuid+"."+filetype;
					}
					catch(Exception e)
					{
						result[i]="fileerror";
					}
				}
				else
				{
					result[i]="fileerror";
				}
			}
		}
		else
		{
			result[0]="filenull";
			return result;
		}
		return result;
	}
	/**
	 * 判断上传结果中,上传成功数量(filesuccess),上传失败数量(fileerror),上传文件空(filenull)
	 * @param result 上传之后返回结果
	 * @return 返回Map,其中存储上传成功数量(filesuccess),上传失败数量(fileerror),上传文件空(filenull)
	 */
	public Map<String,Object> getUploadState(String[]result)
	{
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("filenull",0);
		map.put("fileerror",0);
		map.put("filesuccess",0);
		if(null!=result&&"filenull".equals(result[0]))
		{
			map.put("filenull",1);
		}
		else
		{
			for(int i=0;i<result.length;i++)
			{
				if("fileerror".equals(result[i]))
				{
					int fileerror=Integer.parseInt(map.get("fileerror").toString());
					fileerror++;
					map.put("fileerror",fileerror);
				}
				if(!"filenull".equals(result[i])&&!"fileerror".equals(result[i]))
				{
					int filesuccess=Integer.parseInt(map.get("filesuccess").toString());
					filesuccess++;
					map.put("filesuccess",filesuccess);
				}
			}
		}
		return map;
	}
}

package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091300504745";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCE2nPjAxtIxPCIQLbzm+IERyguDQKBj5u775zsIvizR4XxzxL4CUfnQAWKQ9a5hhqoQ8JsioUerAbnglrGQK6/Tcg+/oA/sUPY1rv7lgcv6NrmNKW/FcoPhXU/jQt+jv/vgpvM/48+0rL5ClbJ0Wu6iyipw4vXckSqJvrRACCyb1u6a4nO3R9F65X35qxqcRnpcXF1iJ3vV2nkRmmeliY4dMy5HKGawc2z45w4tc6E1d0wSr/t37Mh7oEZXeVhGUMRQa9PAbaM/MCJgZN5m46tqan3Tiy0BH58Ul6DXmtiSrlSUf8m+JqGeqBRt5uXE74DpKJDlsnWfYh0k51suN6JAgMBAAECggEAWKY4XAvPogAgDJs6OVYUPAyLSCdQO8nq/j4GdR9k2qRoQZGOs8nlm+6Bg+B+oK9WjF8iljDcYTojJUo7bjztHiQ18ar7QwTzI/ct2tQimZqErsYEr3xHp5HDShPAzsN3DogVlHYXTLFl0X5PqT2/5+tBx/3/C1VpciyugtXV+5oJB5mvxDgCWCtAMKviDM8cPLq4R0WF+a+nlL+QV3XQIfS/hX/x2sUHqE28Brk/cn4AqgVIb+VvUS/Zy6jdZ4TRot7dXbfRMGdYBBa3aleo18KN8Y2hZaXnDqt69o1D3scqUbJ5aSyHC2qHerHnYykcQcgzacU7HClECcX60N75/QKBgQD01CAyON64RMIYZ/+OFaiaWp3gocHSu7etLpW9FU9Y2LdSCiJwVMO3fH30ZSQpcyeeFGExXTvMDynVHPT8IJ35jU/2wqbqE+NtxFTDTo/r5aQIYTqcd7NxrSTi0EZJJM0msq+enUvgFeLu98h2PX6HVCTfZirH8v4lnV65bi4vpwKBgQCK6lRQalSOzH2LqLAmvUIRQiJBOBphk8WR3jXha74MzZiyKP6oL9GAHN7WMWyNlB8+q3s09QxdkNUgn5Rb41B4ZtRZomlPrsJXslypGrBjkVT1yIRIK+35KnYaln8MyP8M4PLAYY1NienZF7S5CJWb9zmfpcmwbakrqq/iixvGTwKBgQCSX5h4LkQKCyG4EcVaH1zUG8U0HcGRyiVAZw+jInBz/+1qISEB48u3kbiEO0vpdC2Fd028g69SiuZJwaw+aQnJv1DFiQ7d99ILOEwtEHU/ZeYyFF9EWNRx7ECXUkoTROtabY5N2GEasjshAAdbmdxh8E6zOZPuQzrrJjERz+vRFQKBgB77E8K7dBBE2tsCzAZXvxxKO4mAEaIharaVcD7N4JzKXXueWOz5fSetSKVMcIFCv5UieV/eJtvXKTEVZej4UUII7OLwrbvvpbgZN0EfiqcqCmCmT5oo8fHX3m8fkUYwrXEZ2gm9t93LHDQmbU+28mbORDOurcSDMG9kqcVEcPVRAoGAQ6YHdwcy68bVxH/CCZYMM2HbLZy5fqylm3InSlxYdKhVK35O3kgdzIkO26s0CZcC5yJPJc+t83qGeYOaxlPa4hguRTOQSmmYQXp3iYVxrMobLX0fta1R3+052vJbDO2Hqwl9yK5XCB1/tAtTc7d8OGu4VDdZzsNibBebD6IAvSk=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwO+8yfRTKCyi7uLLxo42zpuBmqhIWN7oD2GprwAN5tlJcVr8LyBEDW7iBD+ec2PkbS+mSMiKmqsVuRIlplRS/+9EYUrYNfns3kf8AvFdBxCSfrxKeEdhmEUHQVa9k2yKGBWNTY1DXmMWHnKYVXspxhh8OzcUzipJW3ww5O8qVnY2ExCj+dLw4nbu5ZYsg8H0xoMQspGp44F2N9jpm+sdGeRW5jvVxD2xT1QFwQyLTOoT5izzIeXVPoM+/9CbEyynCsUXXKyldzRwDRX06sSXOvCjlEUPIKpn6P3rr0odP/gTBnP6jJpBGhZ6HnJkHkgGj2CTi1D6hokOayiKCO4qBwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://ryp96t.natappfree.cc/drivingSchool/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String studentApplyreturn_url = "http://dmd3wp.natappfree.cc/drivingSchool/alipayAction/studentApplyreturn_url";
	public static String otherCostreturn_url = "http://dmd3wp.natappfree.cc/drivingSchool/alipayAction/otherCostreturn_url";
	public static String return_url = "http://dmd3wp.natappfree.cc/drivingSchool/alipayAction/return_url";
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}


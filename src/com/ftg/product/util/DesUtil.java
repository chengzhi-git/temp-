package com.ftg.product.util;
import java.io.IOException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
/**
 *@author WHD
 *data 2015年8月16日
 *即使导入sun.misc这个架包也会报错，这时首先把你的jre架包移除在导入一次就可以了
 */
public class DesUtil {
     private final static String DES = "DES";
        /**
         * Description 根据键值进行加密
         * @param data 
         * @param key  加密键byte数组
         * @return
         * @throws Exception
         */
        public static String encrypt(String data, String key) throws Exception {
            byte[] bt = encrypt(data.getBytes(), key.getBytes());
            //注意：在加密和解密的时候使用sun的BASE64Encoder（）进行编码和解码不然会有乱码
            //网上查看了很多实例，都没有编码和解码，也说没有乱码问题，而我这里出现了乱码，所以使用BASE64Encoder（）进行了编码解码
            String strs = new BASE64Encoder().encode(bt);
            return strs;
        }
      
        /**
         * Description 根据键值进行解密
         * @param data
         * @param key  加密键byte数组
         * @return
         * @throws IOException
         * @throws Exception
         */
        public static String decrypt(String data, String key) throws IOException,
                Exception {
            if (data == null)
                return null;
            //注意：在加密和解密的时候使用sun的BASE64Encoder（）进行编码和解码不然会有乱码
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] buf = decoder.decodeBuffer(data);
            byte[] bt = decrypt(buf,key.getBytes());
            return new String(bt);
        }
      
        /**
         * Description 根据键值进行加密
         * @param data
         * @param key  加密键byte数组
         * @return
         * @throws Exception
         */
        private static byte[] encrypt(byte[] data, byte[] key) throws Exception {
            // 生成一个可信任的随机数源
            SecureRandom sr = new SecureRandom();
            // 从原始密钥数据创建DESKeySpec对象
            DESKeySpec dks = new DESKeySpec(key);
            // 创建一个密钥工厂，然后用它把DESKeySpec转换成SecretKey对象
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(DES);
            SecretKey securekey = keyFactory.generateSecret(dks);
            // Cipher对象实际完成加密操作
            Cipher cipher = Cipher.getInstance(DES);
            // 用密钥初始化Cipher对象
            cipher.init(Cipher.ENCRYPT_MODE, securekey, sr);
            //正式执行加密操作
            return cipher.doFinal(data);
        }
          
        /**
         * Description 根据键值进行解密
         * @param data
         * @param key  加密键byte数组
         * @return
         * @throws Exception
         */
        private static byte[] decrypt(byte[] data, byte[] key) throws Exception {
            // 生成一个可信任的随机数源
            SecureRandom sr = new SecureRandom();
            // 从原始密钥数据创建DESKeySpec对象
            DESKeySpec dks = new DESKeySpec(key);
            // 创建一个密钥工厂，然后用它把DESKeySpec转换成SecretKey对象
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(DES);
            SecretKey securekey = keyFactory.generateSecret(dks);
            // Cipher对象实际完成解密操作
            Cipher cipher = Cipher.getInstance(DES);
            // 用密钥初始化Cipher对象
            cipher.init(Cipher.DECRYPT_MODE, securekey, sr);
            // 正式进行解密操作 
            return cipher.doFinal(data);
        }
        
        public static void main(String[] args) throws Exception {
            String data = "000000";
            // 注意：DES加密和解密过程中，密钥长度都必须是8的倍数
            //UUID.randomUUID+"";
            String key = "12345678900";
            //密码加密
            System.err.println(encrypt(data, key));
            //密码解密
            System.err.println(decrypt(encrypt(data, key), key));
        }
}
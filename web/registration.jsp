<%-- 
    Document   : registration
    Created on : Sep 13, 2023, 11:02:18 AM
    Author     : 123oj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <style>
            #bg
            {
                background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.dev/svgjs' width='400' height='600' preserveAspectRatio='none' viewBox='0 0 400 600'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1040%26quot%3b)' fill='none'%3e%3crect width='400' height='600' x='0' y='0' fill='rgba(4%2c 119%2c 45%2c 1)'%3e%3c/rect%3e%3cpath d='M307.482%2c419.948C342.784%2c420.244%2c372.95%2c394.765%2c388.174%2c362.913C401.57%2c334.885%2c391.318%2c303.793%2c375.885%2c276.833C360.32%2c249.642%2c338.777%2c223.462%2c307.482%2c221.953C273.981%2c220.338%2c243.032%2c240.389%2c226.614%2c269.636C210.529%2c298.29%2c213.532%2c332.641%2c229.1%2c361.579C245.642%2c392.327%2c272.568%2c419.655%2c307.482%2c419.948' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M112.86552192303256 492.06853291377377L187.4901117375707 550.4862679646644 200.44982869481527 468.6618353961015z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M211.642%2c471.033C242.823%2c471.751%2c272.607%2c453.726%2c286.231%2c425.67C298.55%2c400.301%2c285.662%2c372.434%2c271.313%2c348.155C257.313%2c324.467%2c239.155%2c299.088%2c211.642%2c299.461C184.508%2c299.829%2c167.972%2c326.062%2c154.708%2c349.735C141.854%2c372.675%2c131.606%2c398.561%2c142.779%2c422.365C155.58%2c449.637%2c181.523%2c470.339%2c211.642%2c471.033' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M427.74%2c659.028C465.814%2c659.084%2c510.345%2c658.744%2c528.897%2c625.496C547.215%2c592.667%2c522.781%2c555.624%2c503.418%2c523.4C484.91%2c492.6%2c463.55%2c460.119%2c427.74%2c457.154C387.35%2c453.81%2c347.548%2c474.002%2c326.724%2c508.771C305.351%2c544.457%2c303.886%2c590.68%2c327.094%2c625.201C348.258%2c656.682%2c389.806%2c658.973%2c427.74%2c659.028' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M293.90962286617014 29.972734822296097L191.83536527357163 121.70481449398773 305.2659317365335 160.76209071827412z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M-33.44741887855223 136.38518821496268L37.796370346233886 154.14825989735908 55.5594420286303 82.90447067257298-15.684347196155812 65.14139899017657z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M74.91240739878312 403.27494779070287L128.74060991026326 368.31850435157435 93.78416647113475 314.4903018400942 39.95596395965461 349.44674527922274z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M202.66237375859595 612.8579560744583L231.39083868466946 548.3327673926797 166.86565000289082 519.6043024666062 138.1371850768173 584.1294911483849z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M214.53504734491975 502.8097806438566L129.51480280501778 443.1571314039246 120.02467465276398 533.4496693617454z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M62.9123789178301 296.71352378573147L121.63704846475763 333.4866347673743 124.80697167137396 273.0008967723266z' fill='rgba(8%2c 209%2c 107%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1040'%3e%3crect width='400' height='600' fill='white'%3e%3c/rect%3e%3c/mask%3e%3cstyle%3e %40keyframes float1 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-10px%2c 0)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float1 %7b animation: float1 5s infinite%3b %7d %40keyframes float2 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-5px%2c -5px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float2 %7b animation: float2 4s infinite%3b %7d %40keyframes float3 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(0%2c -10px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float3 %7b animation: float3 6s infinite%3b %7d %3c/style%3e%3c/defs%3e%3c/svg%3e");
            
            }
        </style>
    </head>
    <body>
        <div class="container">
            
            <html:include page="header.html"/>
            
            <!--------------------------Content area Starts------------------------------->
            
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px;" id="bg">
                    <h4 class="mt-4">Farmer Merchant Integration</h4><br>
                    <h5>Chairman</h5><hr>
                    <p>Mr. Surendra D Patel <br>
                        Mobile No. :+91 99745 57775</p>
                     <h5>Managing Director</h5><hr>
                    <p>Mr. Kshitij S. Patel <br>
                        Mobile No. : +91 98985 37773<br>
                        kspatel@coldstorage.com</p><br>
                    <h5>Address</h5><hr>
                    <p>
                        Amar Cold Storage,<br>
                        National Highway No. 228,<br>
                        Anand - Lambhvel Road,<br>
                        Lambhvel, Dist : Anand,<br>
                        Gujarat - India.<br><br>
                        
                        Phone No. : + 91 2692-251525<br>
                        Mobile No. : + 91 90999 08522<br>

                        Email: info@coldstorage.com</p>
                </div>
                <div class="col-sm-8" style="min-height: 600px; background-color: aliceblue;">
                    <h2 style="text-align: center; color: blue;">Registration Form</h2>
                    <form class="form-group mt-1" method="post" action="controller.jsp" >
                        <input type="hidden" name="page" value="registration"/>
                        <table class="table" style="width: 80%;margin: auto;">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Father's Name</td>
                                <td>
                                    <input type="text" name="fname" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Mother's Name</td>
                                <td>
                                    <input type="text" name="mname" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Village</td>
                                <td>
                                    <input type="text" name="village" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Post</td>
                                <td>
                                    <input type="text" name="post" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter District</td>
                                <td>
                                    <input type="text" name="district" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter State</td>
                                <td>
                                    <input type="text" name="state" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Pincode</td>
                                <td>
                                    <input type="number" name="pincode" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact Number</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Aadhar Number</td>
                                <td>
                                    <input type="number" name="aadharno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Pan Number</td>
                                <td>
                                    <input type="text" name="panno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-outline-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            
            
            <!--------------------------Content area Ends--------------------------------->
            
            <html:include page="footer.html"/>
                
            
        </div>
    </body>
</html>

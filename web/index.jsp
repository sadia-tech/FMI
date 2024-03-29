<%-- 
    Document   : index
    Created on : Sep 10, 2023, 10:09:41 AM
    Author     : 123oj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/animate.min.css" rel="stylesheet" type="text/css">
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="js/wow.min.js" type="text/javascript"></script>
        <script>
              new WOW().init();
         </script>
         <style>
             .card {
                    position: relative;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    width: 320px;
                    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                    padding: 32px;
                    overflow: hidden;
                    border-radius: 10px;
                    transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
                  }

                  .content {
                    display: flex;
                    flex-direction: column;
                    align-items: flex-start;
                    gap: 20px;
                    z-index: 1;
                    color: black;
                    transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
                  }

                  .content .heading {
                    font-weight: 700;
                    z-index: 1;
                    font-size: 32px;
                  }

                  .content .para {
                    line-height: 1.5;
                  }

                  .content .btn {
                    color: #e8e8e8;
                    text-decoration: none;
                    padding: 10px;
                    font-weight: 600;
                    border: none;
                    cursor: pointer;
                    background: linear-gradient(to right, #141e30, #243b55);
                    border-radius: 5px;
                    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
                  }

                  .card::before {
                    content: "";
                    position: absolute;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    height: 5px;
                    background: linear-gradient(to right, #141e30, #243b55);
                    z-index: 0;
                    transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
                  }

                  .card:hover::before {
                    height: 100%;
                  }

                  .card:hover {
                    box-shadow: none;
                  }

                  .card:hover .btn {
                    color: #212121;
                    background: #e8e8e8;
                  }

                  .content .btn:hover {
                    outline: 2px solid #e8e8e8;
                    background: transparent;
                    color: #e8e8e8;
                  }

                  .content .btn:active {
                    box-shadow: none;
                  }

         </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            
            <!--------------------------Content area Starts------------------------------->
            <div class="row mt-2" style="min-height: 500px; background: linear-gradient(to right, #bdc3, #2c3e50); ">
            <div class="row">
                <h2 align="center" class="mt-2">Our Services</h2><hr>
            </div>
            <div class="row mt-2">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="content">
                          <p class="heading">Multipurpose Cold Stores
                          </p><p class="para">
                             The products stored in these types of cold stores are fruits, vegetables, dry fruits, spices, pulses, and milk products.
                          </p>
                          <button class="btn">Read more</button>
                        </div>
                      </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="content">
                          <p class="heading">Small Cold Stores
                          </p><p class="para">
                             These come with precooling facilities for fresh fruits and vegetables, mainly, for export-oriented items like grapes.
                          </p>
                          <button class="btn">Read more</button>
                        </div>
                      </div> 
                   
                </div>
                 <div class="col-sm-3">
                   <div class="card">
                        <div class="content">
                          <p class="heading">Frozen Food Stores
                          </p><p class="para">
                             These come with or without freezing facility for fish, meat, poultry, dairy products and processed fruits and vegetables.
                          </p>
                          <button class="btn">Read more</button>
                        </div>
                      </div> 
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                   <div class="card">
                        <div class="content">
                          <p class="heading">Controlled Atmosphere Stores
                          </p><p class="para">
                             These are meant for certain fruits/ vegetables like apples, pears, and cherries.
                          </p>
                          <button class="btn">Read more</button>
                        </div>
                      </div> 
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="content">
                          <p class="heading">Mini Units / Walk-in Cold Stores
                          </p><p class="para">
                             These are located at hotels, restaurants, malls, and supermarkets.
                          </p>
                          <button class="btn">Read more</button>
                        </div>
                      </div> 
                </div>
                 <div class="col-sm-3">
                   
                </div>
            </div>
            </div>
            
            <!--------------------------Content area Ends--------------------------------->
            
            <jsp:include page="footer.jsp"/>
                
            
        </div>
    </body>
</html>

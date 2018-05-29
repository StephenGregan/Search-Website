<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchPage.aspx.cs" Inherits="SearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    input[type=text] {
    width: 130px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
    width: 100%;
}
    </style>
</head>
<body>
    <h1>Search Json</h1>
    <form id="form1" runat="server">
        <div class =" "container">
           <p>
            <input type="text" name="search" placeholder="Search..">
                </p>
           <%--  <label for="id"><b>Id</b></label>
            <input type="text" placeholder="Search Id" name="id" >
                
            
             <label for="name"><b>Name</b></label>
            <input type="text" placeholder="Search Name" name="name" >
               
                
             <label for="qualifications"><b>Qualifications</b></label>
            <input type="text" placeholder="Qualifications" name="qualifications" >--%>
                    
            <p>
             <button type="submit">Search</button>
               </p>
            <p>
            <a href="http://localhost:54026/LoginPage">Login To Interpreter Intelligence</a>
            </p>
        </div>
    </form>
</body>
    <script>
        var jsonVar = {
        text: "example",
        number: 1,
        obj: {
            "more text": "another example"
        },
        obj2: {
             "yet more text": "yet another example"
        }
    }, // THE RAW OBJECT
    jsonStr = JSON.stringify(jsonVar),  // THE OBJECT STRINGIFIED
    regeStr = '', // A EMPTY STRING TO EVENTUALLY HOLD THE FORMATTED STRINGIFIED OBJECT
    f = {
            brace: 0
        }; // AN OBJECT FOR TRACKING INCREMENTS/DECREMENTS,
           // IN PARTICULAR CURLY BRACES (OTHER PROPERTIES COULD BE ADDED)

regeStr = jsonStr.replace(/({|}[,]*|[^{}:]+:[^{}:,]*[,{]*)/g, function (m, p1) {
var rtnFn = function() {
        return '<div style="text-indent: ' + (f['brace'] * 20) + 'px;">' + p1 + '</div>';
    },
    rtnStr = 0;
    if (p1.lastIndexOf('{') === (p1.length - 1)) {
        rtnStr = rtnFn();
        f['brace'] += 1;
    } else if (p1.indexOf('}') === 0) {
         f['brace'] -= 1;
        rtnStr = rtnFn();
    } else {
        rtnStr = rtnFn();
    }
    return rtnStr;
});

document.body.innerHTML += regeStr; 


    </script>
</html>

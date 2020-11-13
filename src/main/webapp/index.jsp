<%-- 
    Document   : index
    Created on : Nov 1, 2020, 4:06:24 PM
    Author     : Rodrigo Zúñiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <ink rel="stylesheet" type="text/css" htref="css/estiloCalc">
</head>
<script>
    limpiar = false;
    function calcular(valor){   
       if (limpiar) document.calculadora.respuesta.value="";
       
       document.calculadora.respuesta.value+=valor; 
       limpiar = false;
    }
    
    function procesar(){
        try {
            paso=eval(document.calculadora.respuesta.value);
            document.calculadora.respuesta.value = parseFloat(Math.round(paso * 100) / 100).toFixed(2);
            limpiar = true;
        } catch(a){
            alert(a);  
        }
        
    }
</script>
<body>
  <form name="calculadora">
    <h3>CALCULADORA 10%</h3>
    <input type="textfield" name="respuesta" value="">
    <br>
    <input type="button" value="1" onClick="calcular('1')">
    <input type="button" value="2" onClick="calcular('2')">
    <input type="button" value="3" onClick="calcular('3')">
    <input type="button" value="+" onClick="calcular('+')">
    <br>
    <input type="button" value="4" onClick="calcular('4')">
    <input type="button" value="5" onClick="calcular('5')">
    <input type="button" value="6" onClick="calcular('6')">
    <input type="button" value="-" onClick="calcular('-')">
    <br>
    <input type="button" value="7" onClick="calcular('7')">
    <input type="button" value="8" onClick="calcular('8')">
    <input type="button" value="9" onClick="calcular('9')">
    <input type="button" value="*" onClick="calcular('*')">
    <br>
    <input type="button" value="0" onClick="calcular('0')">
    <input type="button" value="." onClick="calcular('.')">
    <input type="reset" value="c">
    <input type="button" value="/" onClick="calcular('/')">
    <input type="button" value="=" onClick="procesar();">
    </form>
</body>
</html>

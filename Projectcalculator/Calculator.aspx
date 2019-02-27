<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Projectcalculator.Calculator" %>
 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title>Area Calculator</title>
        <meta name ="viewport" content ="width=device-width,initial-scale=1" />
        <link href="Calculator%20style%20sheet.css" rel="stylesheet" />
        
        
       
        <style type="text/css"><!-- CSS code for the generated styles --></style>
       <script type="text/javascript">
    function ShowLabel() {
      // Note that the client ID might be different from the server side ID
      document.getElementById('Area').style.display = 'inherit';
    }
</script>
    </head>
<body>
<form id="form2" runat="server">
<div>
   
    <img src="Image/Logo.jpg" class="center-block img-responsive" /><br />
    
    <h1>Area Calculator</h1>
    <table class="style2">
        <tr>
            <td class="style3">Enter Length:</td>
            <td><asp:TextBox ID="txtLength"
                runat="server" Width="106px">0.0</asp:TextBox></td>
        </tr>
        <tr>
            <td class="style3">Enter Width:</td>
            <td><asp:TextBox ID="txtWidth" runat="server"
                Width="106px">0.0</asp:TextBox></td>
          
        </tr>
        <tr>
            <td class="style3">Processor  Name:</td>
            <td><asp:TextBox ID="txtProcessorName" runat="server"
                Width="106px"></asp:TextBox></td>
        </tr>
         
<tr>
            <td class="style3" >Area:</td>
            <td><asp:TextBox ID="txtArea" runat="server"
                Width="300px" EnableViewState="False"></asp:TextBox></td>
        
        </tr>

        <tr>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>

            <td class="style3"><asp:Button ID="btnCalculate"

                runat="server" Text="Calculate" Width="100px"
               OnClick="btnCalculate_Click" OnClientClick="ShowLabel();"/> </td>
            
            <td><asp:Button ID="btnClear" runat="server"
                Text="Clear" Width="100px" OnClick="btnClear_Click"
                CausesValidation="False" /></td>
            
            </tr>
       <tr>

            <td><asp:Label ID="Area" runat="server" type="hidden"
            Font-Bold="True"></asp:Label></td>
        </tr>
        
    </table>
<br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="Length is a required field."
         ControlToValidate="txtLength" Display="Dynamic" 
                    ForeColor="Red"></asp:RequiredFieldValidator>

   <asp:RangeValidator ID="RangeValidator1"
       runat="server" ErrorMessage="Quantity must range from 1 to 500."
                    ControlToValidate="txtLength" 
                  MaximumValue="500" MinimumValue="1" Type="Double">

   </asp:RangeValidator><br />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ErrorMessage="Width is a required field."
         ControlToValidate="txtWidth" Display="Dynamic" 
                    ForeColor="Red"></asp:RequiredFieldValidator>

      <asp:RangeValidator ID="RangeValidator2" runat="server" 
          ErrorMessage="Quantity must range from 1 to 500."
                    ControlToValidate="txtWidth" 
                    MaximumValue="500" MinimumValue="1" Type="Double">

      </asp:RangeValidator><br />

         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ErrorMessage="Length is a required field."
         ControlToValidate="txtProcessorName" Display="Dynamic" 
                    ForeColor="Red"></asp:RequiredFieldValidator>

 
                <br />
<!-- aspx code for the field validators -->
</div>
</form>
</body>
</html>
 









































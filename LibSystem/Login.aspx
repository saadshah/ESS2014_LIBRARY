<%@ Page Title="" Language="C#" MasterPageFile="~/LibSys.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentMain" Runat="Server">
      <h2>Login</h2>

    <table class="tbl">
        <tr>
            <td class="small" >User ID</td>

           
        </tr>
          <tr>
            <td class="small" ><input type="text" class="txt" id="txtid" name="txtid" required /></td>

           
        </tr>

          <tr>
            <td class="small" > Password</td>

           
        </tr>

          <tr>
       <td class="small" ><input type="password" class="txt" id="txtpassword" name="txtpassword" required /></td>

           
        </tr>


           <tr>
            <td class="small" > <asp:Button ID="btnreg" runat="server" CssClass="btn" Text="Login" /></td>

           
        </tr>


         <tr>
            <td class="small" >   <asp:Label ID="lblerr" CssClass="err" runat="server" Text=""></asp:Label></td>

           
        </tr>

        </table>

</asp:Content>


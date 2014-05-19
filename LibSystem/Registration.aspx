<%@ Page Title="" Language="C#" MasterPageFile="~/LibSys.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" Runat="Server">
     <ul>
        <li><a href="Default.aspx">Home</a> </li>
        <li><a href="javascript:history.go(-1);">Back</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentMain" Runat="Server">
    <h2>Online Registration</h2>

    <table class="tbl">
        
        <tr>
            <td class="small">First Name</td>

            <td class="large">
                <input type="text" class="txt" id="FirstName" name="FirstName" required />
            </td>
        </tr>


        <tr>
            <td class="small">Last Name</td>

            <td class="large">
                <input type="text" class="txt" id="LastName" name="LastName" required />
            </td>
        </tr>


        <tr>
            <td class="small">Level</td>

            <td class="large">
                <input type="text" class="txt" id="level" name="level" required />
            </td>
        </tr>


        <tr>
            <td class="small">Class Number</td>

            <td class="large">
                <input type="text" class="txt" id="ClassNumber" name="ClassNumber" required />
            </td>
        </tr>


        <tr>
            <td class="small">DOB</td>

            <td class="large">
                <input type="text" class="txt" id="DOB" name="DOB" required />
            </td>
        </tr>

        <tr>
            <td class="small">Cellular</td>

            <td class="large">
                <input type="text" class="txt" id="Mobile" name="Mobile" required />
            </td>
        </tr>


        <tr>
            <td class="small">Home Address</td>

            <td class="large">
                <input type="text" class="txt" id="address" name="address" required />
            </td>
        </tr>
        <tr>
            <td class="small">Email address</td>

            <td class="large">
                <input type="email" class="txt" id="emailaddress" name="emailaddress" required />
            </td>
        </tr>
           <tr>
            <td class="small">Password</td>

            <td class="large">
                <input type="password" class="txt" id="txtpassword" name="txtpassword" required />
            </td>
        </tr>


        <tr>
            <td class="small"></td>

            <td class="large">
                <asp:Button ID="btnreg" runat="server" CssClass="btn" Text="Create Profile" />
            </td>
        </tr>
        <tr>
            <td class="mid"></td>

            <td class="large">
                <asp:Label ID="lblerr" CssClass="err" runat="server" Text="ALL FIELDS ARE REQUIRED"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>


<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Steganography._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        
    <div class="row">  
    <div class="col-lg-12"> 
         <asp:Label runat="server" ID="errorMsg"></asp:Label>
     </div>
     </div>
      <div class="row">  
       <div class="col-lg-12"> 
           <div class="col-lg-6"> 
               <div class="orm-group"> 
                   <h2>Encryption The Image</h2>
                   </div>
               <div class="orm-group"> 
                     <label for="usr">Select Image:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fileUplode" ErrorMessage="*" ForeColor="Red" ValidationGroup="e"></asp:RequiredFieldValidator>
&nbsp;<asp:FileUpload ID="fileUplode" runat="server" class="form-control"/>
                  
                 </div>
                
                 <div class="orm-group"> 
                     <label for="usr">Text Message</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" BorderStyle="None" ControlToValidate="txtMessage" ForeColor="Red" ValidationGroup="e"></asp:RequiredFieldValidator>
                     <asp:TextBox runat="server" ID="txtMessage" class="form-control" TextMode="MultiLine"></asp:TextBox><br />
                 </div>
               <div class="orm-group"> 
                     <asp:Button  runat="server" ID="btnEncrypt" class="form-control" Text="Encrypt" OnClick="btnEncrypt_Click" ValidationGroup="e" />
                    </div>
               <hr />
                <div class="orm-group"> 
                    <label for="usr">Decrypted Image </label>
                      <asp:Image runat="server" ID="imgEncrypt" class="form-control" Height="300px" ImageUrl="~/images/back.png"/>
                    <br />
                     <label for="comment">Note: Save This Image... Decrepted Image Look Same as Orignal Image.</label>
                  </div>
               </div>
           <div class="col-lg-6"> 
                <div class="orm-group"> 
                   <h2>Decryption The Image</h2>
                   </div>
               <div class="orm-group"> 
                   <label for="usr">Select Image:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUploadDec" ErrorMessage="*" ForeColor="Red" ValidationGroup="d"></asp:RequiredFieldValidator>
&nbsp;<asp:FileUpload ID="FileUploadDec" runat="server" class="form-control"/>
                 </div>
               <div class="orm-group"> 
                   <asp:Button  runat="server" ID="btnDecrypt" class="form-control" Text="Decrept" OnClick="btnDecrypt_Click" ValidationGroup="d" />
                   </div>
               <div class="orm-group"> 
                    <asp:Label runat="server" ID="lblMessage" class="form-control"></asp:Label>
                   </div>
               </div>
       </div>
       </div>

          </div>
    
    
   
</asp:Content>

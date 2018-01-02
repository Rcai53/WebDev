 <%@ Page Language="C#" AutoEventWireup="True" CodeBehind="InsertScore.aspx.cs" Inherits="StudentManagerSystem.InsertScore" %>

<!DOCTYPE html>




<div class="pageContent">
    <form id="form1" runat="server">
        <div class="pageFormContent" layouth="56">
            <p>
                <label>
                学 号：</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                姓 名：</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                班 级：</label>
                <input name="orgLookup.id" type="hidden" value="${orgLookup.id}" />
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                数据结构：</label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>计算机组成原理：</label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
               计算机科学概论：</label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>linux操作系统：</label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>面向对象技术：</label>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>web开发：</label>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </p>
        </div>
        <div class="formBar">
            <ul>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="保存" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" style="margin-left: 76px" Text="取消" />
            </ul>
        </div>
    </form>
</div>







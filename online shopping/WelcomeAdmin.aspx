
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WelcomeAdmin.aspx.cs" Inherits="online_shopping.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1332px;
            height: 1559px;
            margin-bottom: 178px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url(../Images/adm.jpg)" class="auto-style2">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">
                &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#660066"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button4" runat="server" BackColor="#000066" BorderColor="#003300" Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="#FFCCFF" OnClick="Button4_Click" Text="Insert Item" BorderStyle="Solid" Font-Italic="True" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Insert Category" BackColor="#000066" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" ForeColor="#FFCCFF" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Font-Size="Larger" Font-Underline="True" Text="Update Item" OnClick="Button5_Click" BackColor="#000066" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" ForeColor="#FFCCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Update Category" BackColor="#000066" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" ForeColor="#FFCCFF" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button8" runat="server" BackColor="#009900" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Size="Larger" ForeColor="#FFCCFF" OnClick="Button8_Click" Text="View Orders" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" BackColor="#009900" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Size="Larger" ForeColor="#FFCCFF" OnClick="Button9_Click" Text="View Feedback" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" BackColor="#CC0000" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Size="Larger" ForeColor="#FFCCFF" OnClick="Button10_Click" Text="Logout" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [order_details] WHERE [o_id] = @original_o_id AND [i_id] = @original_i_id AND [cc_id] = @original_cc_id AND [c_id] = @original_c_id AND [o_status] = @original_o_status AND (([o_date] = @original_o_date) OR ([o_date] IS NULL AND @original_o_date IS NULL)) AND (([o_cost] = @original_o_cost) OR ([o_cost] IS NULL AND @original_o_cost IS NULL))" InsertCommand="INSERT INTO [order_details] ([i_id], [cc_id], [c_id], [o_status], [o_date], [o_cost]) VALUES (@i_id, @cc_id, @c_id, @o_status, @o_date, @o_cost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order_details]" UpdateCommand="UPDATE [order_details] SET [i_id] = @i_id, [cc_id] = @cc_id, [c_id] = @c_id, [o_status] = @o_status, [o_date] = @o_date, [o_cost] = @o_cost WHERE [o_id] = @original_o_id AND [i_id] = @original_i_id AND [cc_id] = @original_cc_id AND [c_id] = @original_c_id AND [o_status] = @original_o_status AND (([o_date] = @original_o_date) OR ([o_date] IS NULL AND @original_o_date IS NULL)) AND (([o_cost] = @original_o_cost) OR ([o_cost] IS NULL AND @original_o_cost IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_o_id" Type="Int32" />
                        <asp:Parameter Name="original_i_id" Type="String" />
                        <asp:Parameter Name="original_cc_id" Type="String" />
                        <asp:Parameter Name="original_c_id" Type="String" />
                        <asp:Parameter Name="original_o_status" Type="String" />
                        <asp:Parameter Name="original_o_date" Type="String" />
                        <asp:Parameter Name="original_o_cost" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="i_id" Type="String" />
                        <asp:Parameter Name="cc_id" Type="String" />
                        <asp:Parameter Name="c_id" Type="String" />
                        <asp:Parameter Name="o_status" Type="String" />
                        <asp:Parameter Name="o_date" Type="String" />
                        <asp:Parameter Name="o_cost" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="i_id" Type="String" />
                        <asp:Parameter Name="cc_id" Type="String" />
                        <asp:Parameter Name="c_id" Type="String" />
                        <asp:Parameter Name="o_status" Type="String" />
                        <asp:Parameter Name="o_date" Type="String" />
                        <asp:Parameter Name="o_cost" Type="String" />
                        <asp:Parameter Name="original_o_id" Type="Int32" />
                        <asp:Parameter Name="original_i_id" Type="String" />
                        <asp:Parameter Name="original_cc_id" Type="String" />
                        <asp:Parameter Name="original_c_id" Type="String" />
                        <asp:Parameter Name="original_o_status" Type="String" />
                        <asp:Parameter Name="original_o_date" Type="String" />
                        <asp:Parameter Name="original_o_cost" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="o_id" DataSourceID="SqlDataSource1" Visible="False">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="o_id" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="o_id" />
                        <asp:TemplateField HeaderText="Item ID" SortExpression="i_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("i_id") %>' ReadOnly="True"></asp:TextBox>
                           
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("i_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Id" SortExpression="cc_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cc_id") %>' ReadOnly="True"></asp:TextBox>
                               
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("cc_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer ID" SortExpression="c_id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("c_id") %>' ReadOnly="True"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("c_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="o_status">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("o_status") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("o_status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date" SortExpression="o_date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("o_date") %>' ReadOnly="True"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("o_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cost" SortExpression="o_cost">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("o_cost") %>' ReadOnly="True"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("o_cost") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="f_id" DataSourceID="SqlDataSource2" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="f_id" HeaderText="f_id" InsertVisible="False" ReadOnly="True" SortExpression="f_id" />
                        <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
                        <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                        <asp:BoundField DataField="i_id" HeaderText="i_id" SortExpression="i_id" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback_DB]"></asp:SqlDataSource>
            </td>
            <td class="auto-style4">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style9"></td>
            <td class="auto-style7"></td>
        </tr>
    </table>
    </div>
</asp:Content>


Imports System.Data.sqlclient

Partial Class form1
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim str As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Database.mdf;Integrated Security=True"
        Dim cn As New sqlConnection(str)
        Dim aa As String = TextBox1.Text
        Dim bb As String = TextBox2.Text
        Dim cc As String = TextBox7.Text
        Dim dd As String = TextBox6.Text
        Dim ee As String = TextBox3.Text
        Dim ff As String = TextBox8.Text
        Dim gg As String = TextBox4.Text
        Dim hh As String = TextBox5.Text
        If aa = "" Or bb = "" Or cc = "" Or dd = "" Or ee = "" Or ff = "" Or gg = "" Or hh = "" Then
            msgbox("FIELDS CANNOT BE EMPTY PLEASE FILL THE DETAILS")
            Exit Sub
        End If
        Try

            cn.Open()
            Dim cmd As New sqlCommand("insert into Tbl(name,address,city,state,mobile,amobile,pincode,email) values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8)", cn)
            cmd.Parameters.AddWithValue("a1", aa)
            cmd.Parameters.AddWithValue("a2", bb)
            cmd.Parameters.AddWithValue("a3", cc)
            cmd.Parameters.AddWithValue("a4", dd)
            cmd.Parameters.AddWithValue("a5", ee)
            cmd.Parameters.AddWithValue("a6", ff)
            cmd.Parameters.AddWithValue("a7", gg)
            cmd.Parameters.AddWithValue("a8", hh)



            cmd.ExecuteNonQuery()
            cn.Close()

        Catch ex As Exception


        End Try
        response.redirect("com.aspx")
    End Sub
End Class

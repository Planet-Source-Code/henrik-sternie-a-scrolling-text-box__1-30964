VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About..."
   ClientHeight    =   3210
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "&Ok"
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Index           =   0
      Interval        =   1
      Left            =   3360
      Top             =   2760
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H80000004&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   495
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   2400
      Width           =   4215
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H80000004&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   430
      Left            =   240
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   -120
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000004&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   2655
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      TabStop         =   0   'False
      Text            =   "Form1.frx":0000
      Top             =   120
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Option Explicit

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
a = 0
End Sub
Private Sub Timer1_Timer(Index As Integer)

If a < 18 Then
    Text1.Top = Text1.Top - 10
    a = a + 1
Else
    Text1.Text = Right(Text1.Text, Len(Text1.Text) - InStr(1, Text1.Text, vbCrLf)) & Left(Text1.Text, InStr(1, Text1.Text, vbCrLf))
    Text1.Top = Text1.Top + 10 * a
    a = 0
End If

End Sub

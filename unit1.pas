unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql55conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, ExtCtrls,Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransaction2: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.FormCreate(Sender: TObject);
begin
    DBGrid2.Columns[0].Visible:=false;
    DBGrid1.Columns[0].Visible:=False;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;


procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var str: string;
begin
    DBGrid2.Columns[0].Visible:=false;
    DBGrid1.Columns[0].Visible:=False;
    SQLQuery1.Active:=false;
    str := 'select * from kollek WHERE Familiya ="'+ Edit1.Text +'";';
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(str);
    SQLTransaction1.Commit;
    SQLQuery1.Active:=true;

end;

procedure TForm1.Button2Click(Sender: TObject);

    var str: string;

begin
    DBGrid2.Columns[0].Visible:=false;
    DBGrid1.Columns[0].Visible:=False;
    if Edit2.Text='' then MessageDlg('Ошибка','Ошибка: Строка пуста',mtError,[mbOK],0) else
    SQLQuery2.Active:=false;
    str := 'select * from monet WHERE Nominal ='+Edit2.Text+';';
    SQLQuery2.SQL.Clear;
    SQLQuery2.SQL.Add(str);
    SQLTransaction1.Commit;
    SQLQuery2.Active:=true;

end;

procedure TForm1.Button3Click(Sender: TObject);
var str:string;
begin

    SQLQuery1.Active:=False;
    SQLQuery2.Active:=false;
    str := 'select * from kollek;';
    SQLQuery2.SQL.Clear;
    SQLQuery2.SQL.Add(str);
    SQLTransaction2.Commit;
    str := 'select * from monet;';
    SQLQuery1.SQL.Clear;
    SQLQuery1.SQL.Add(str);
    SQLTransaction1.Commit;
    SQLQuery1.Active:=true;
    SQLQuery2.Active:=true;
    DBGrid2.Columns[0].Visible:=false;
    DBGrid1.Columns[0].Visible:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
   var str: string;
begin
    DBGrid2.Columns[0].Visible:=false;
    DBGrid2.Columns[1].Visible:=false;
    SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from kollek INNER JOIN monet ON kollek.idKoll = monet.idMonet;');
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Edit4Change(Sender: TObject);
begin

end;

end.


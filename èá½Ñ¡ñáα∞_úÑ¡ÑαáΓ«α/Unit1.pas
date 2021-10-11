unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons,dateutils, ComObj, ShlObj,StdCtrls, Spin,math, jpeg, ExtCtrls,registry,
  ExtDlgs, ComCtrls;
const CSIDL_WINDOWS	= 36;
type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    ChoixFonteNomSemaine: TFontDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    semaine: TRadioGroup;
    joursemaine: TRadioGroup;
    Libellemois: TRadioGroup;
    Debutsemaine: TRadioGroup;
    AfficheSemaine: TCheckBox;
    afficheannee: TCheckBox;
    Sens: TRadioGroup;
    ImagePositionCalendrier: TImage;
    MMPos1: TSpeedButton;
    MMPos2: TSpeedButton;
    MMPos0: TSpeedButton;
    MMPos3: TSpeedButton;
    MMPos4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupeSpinEdit: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MMGauche: TSpinEdit;
    MMHaut: TSpinEdit;
    MMDroite: TSpinEdit;
    MMBas: TSpinEdit;
    Timer1: TTimer;
    ChoixDesCouleurs: TColorDialog;
    Panel4: TPanel;
    ImagePipetteJour: TImage;
    Shape1: TShape;
    ShapeJourFonte: TShape;
    SpeedButton6: TSpeedButton;
    ShapeJourFond: TShape;
    Shape4: TShape;
    Panel6: TPanel;
    Image4: TImage;
    Shape2: TShape;
    ShapeFonteMois: TShape;
    Panel7: TPanel;
    Image5: TImage;
    ShapeMoisFond: TShape;
    Shape7: TShape;
    Panel8: TPanel;
    Image6: TImage;
    EnCadreMois: TComboBox;
    EncadreJour: TComboBox;
    Shape6: TShape;
    Shape8: TShape;
    ShapePoliceJourEnCours: TShape;
    ShapeFondJourEnCours: TShape;
    Panel11: TPanel;
    Image8: TImage;
    Panel12: TPanel;
    Image9: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    EncadreJourEnCours: TComboBox;
    Shape9: TShape;
    Shape10: TShape;
    ShapePoliceNoSemaine: TShape;
    ShapeFondNoSemaine: TShape;
    Panel10: TPanel;
    Image10: TImage;
    Panel13: TPanel;
    Image11: TImage;
    EncadreNoSemaine: TComboBox;
    Panel1: TPanel;
    PanelPipetteFonte: TPanel;
    ImagePipetteFonte: TImage;
    ShapeCouleurPolice: TShape;
    Shape3: TShape;
    Panel14: TPanel;
    Image3: TImage;
    ShapeSemaineFond: TShape;
    ShapeOmbreFonte: TShape;
    EnCadreSemaine: TComboBox;
    Trans_Semaine: TSpinEdit;
    Trans_JourEnCours: TSpinEdit;
    Trans_NoSemaine: TSpinEdit;
    Trans_Jour: TSpinEdit;
    Trans_Mois: TSpinEdit;
    Shape11: TShape;
    Shape12: TShape;
    ShapePoliceWeekEnd: TShape;
    ShapeFondWeekEnd: TShape;
    Panel5: TPanel;
    Image12: TImage;
    Panel15: TPanel;
    Image13: TImage;
    Encadre_WeekEnd: TComboBox;
    Trans_WeekEnd: TSpinEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    ChoixFonteMois: TFontDialog;
    ChoixFonteJour: TFontDialog;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape5: TShape;
    ShapeCadreJour: TShape;
    ShapeCadreWeeKend: TShape;
    Shape14: TShape;
    Shape13: TShape;
    ShapeCadreAujourdhui: TShape;
    Shape16: TShape;
    ShapeCadreNoSemaine: TShape;
    Shape15: TShape;
    ShapeCadreSemaine: TShape;
    Shape18: TShape;
    ShapeCadreMois: TShape;
    Shape17: TShape;
    ShapeFondImage: TShape;
    Label13: TLabel;
    Arrange_Image: TRadioGroup;
    ImagePosition: TImage;
    SB1: TSpeedButton;
    SB4: TSpeedButton;
    SB0: TSpeedButton;
    SB3: TSpeedButton;
    SB2: TSpeedButton;
    SB5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    ListView1: TListView;
    Panel9: TPanel;
    Image1: TImage;
    Label16: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DebutsemaineClick(Sender: TObject);
    procedure SensClick(Sender: TObject);
    procedure semaineClick(Sender: TObject);
    procedure MMPos1Click(Sender: TObject);
    procedure ImagePipetteFonteMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagePipetteFonteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImagePipetteFonteMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCouleurPoliceMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImagePipetteJourMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImagePipetteJourMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure ImagePipetteJourMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ShapeSemaineFondMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapeMoisFondMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapePoliceJourEnCoursMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeFondJourEnCoursMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeJourFondMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapeFondNoSemaineMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapePoliceNoSemaineMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeJourFonteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeFonteMoisMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapePoliceWeekEndMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapeFondWeekEndMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreJourMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreWeeKendMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreAujourdhuiMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreNoSemaineMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreSemaineMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeCadreMoisMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ShapeFondImageMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  protected
  private
    { Private declarations }
    procedure WM_SETTINGCHANGE(var Message:TMessage); message WM_SETTINGCHANGE;
    Procedure Placeimage(Fond : TBitmap;Image:TPicture);
  public
  Procedure LectureWallpaper;
    { Public declarations }
  end;

var
  Form1: TForm1;
  Fwallpaper :string;
  FJourDebut:integer;
  FCoinCalendrier : Integer;
  FcoinImage : Integer;
  lmois:string;
  bureaulv :Thandle;
  MonCurSeur : HCursor;
  ESPACEMENT_HORIZONTAL:Integer;
  LARGEUR_CELLULE_MOIS : Integer;
  HAUTEUR_CELLULE_MOIS : Integer;
  LARGEUR_CELLULE_SEMA : Integer;
  HAUTEUR_JOUR_SEMA    : Integer;
  LARGEUR_CELLULE_JOUR : Integer;
  HAUTEUR_CELLULE_JOUR : Integer;
  LARGEUR_TOTAL        : Integer;
  HAUTEUR_TOTAL        : Integer;
  Function GetFormatJour(NumJour:Integer;Style:Integer):String;
  Function GetDimensionTexteWidth(aFonte:TFont;Texte:String):Integer;
  Function GetDimensionTexteHeight(aFonte:TFont;Texte:String):Integer;
   procedure NotifyChangementPapierpeint;
  function CheckShell32_471: Boolean;
  Function GetFormatMois(Style:Integer;AfficheAnnee:Boolean):String;
  procedure GetFileVersion(FileName: string; var Major1, Major2,
  Minor1, Minor2: Integer);
  Function LargeurCelluleMois(Canvas:TCanvas;nSemaine:Integer;bAnnee:Boolean):integer;
  Function HauteurCelluleMois(Canvas:TCanvas;nSemaine:Integer;bAnnee:Boolean):Integer;
  procedure DrawTransparentRectangle(Canvas: TCanvas; Rect: TRect;Color: TColor; Transparency: Integer);
  Procedure TracerCadre(Canvas : TCanvas;Rect :TRect;Index : Integer);
  procedure SmoothResize(Var Bmp :Tbitmap;NewWidth, NewHeight:Integer);
  function o_GetPathWinFolders( _iddossier: integer ): string;
implementation

{$R *.dfm}
{$R CALENDRIER.res}
//---------------------------------------------------------------------------//
// Retourne le nom complet ou abrégé du jour en cours ou le 1er Caractères   //
// Style --> 0 Nom Complet(Lundi) 1 Nom Abrégé(Lun.) 2 1er Caractères (L)    //
//---------------------------------------------------------------------------//
Function GetFormatJour(NumJour:Integer;Style:Integer):String;
Var ValeurDeRetour,JourCherche : String;
Begin
   JourCherche := LongDayNames[NumJour];
   Case Style of
   0:  Begin
          JourCherche    := LongDayNames[NumJour];
          ValeurDeRetour := UpperCase(Copy(JourCherche,1,1))+
                                      Copy(JourCherche,2,Length(JourCherche));
       End;
   1:  Begin
          JourCherche    := ShortDayNames[NumJour];
          ValeurDeRetour := UpperCase(Copy(JourCherche,1,1))+
                                      Copy(JourCherche,2,Length(JourCherche));
       End;
   2:  ValeurDeRetour := UpperCase(Copy(LongDayNames[NumJour],1,1));
   End;
   Result := ValeurdeRetour ;
End;
//----------------------------------------------------------------------------//
// Fonction GetDimensionTextewidth                                            //
// Calcul en pixels la longueur du texte en fonction de la police utilisée    //
// et du texte passée en paramètres                                           //
// Ex : LongPixelTexte := GetDimensionTexte(Panel1.Font,'Exemple')            //
//----------------------------------------------------------------------------//
Function GetDimensionTexteWidth(aFonte:TFont;Texte:String):Integer;
Var CanvasTempo     : TCanvas;
    LongueurTexte   : Integer;
Begin
   Assert(Assigned(aFonte));
   // Création d'un canvas virtuel
   CanvasTempo := TCanvas.Create;
   Try
      //Création du contexte-Quand on utilise Display les autres paramètres sont nul
      CanvasTempo.Handle := CreateDC('DISPLAY', nil, nil, nil);
      Try
         //On affecte au canvas la fonte passée en paramètre
         CanvasTempo.Font   := aFonte;
         //Longueur en pixels du Texte
         LongueurTexte := CanvasTempo.TextWidth(Texte);
         //Retourne la longueur en pixels
         Result := LongueurTexte;
      Finally
         //On supprime le context
         DeleteDC(CanvasTempo.Handle);
         CanvasTempo.Handle := 0;
      End;
   Finally
   //On libère le canvas
   CanvasTempo.free;
   End;
End;
//----------------------------------------------------------------------------//
// Fonction GetDimensionTexteHeight                                           //
// Calcul en pixels la hauteur du texte en fonction de la police utilisée     //
// et du texte passée en paramètres                                           //
// Ex : LongPixelTexte := GetDimensionTexte(Panel1.Font,'Exemple')            //
//----------------------------------------------------------------------------//
Function GetDimensionTexteHeight(aFonte:TFont;Texte:String):Integer;
Var CanvasTempo     : TCanvas;
    LongueurTexte   : Integer;
Begin
   Assert(Assigned(aFonte));
   // Création d'un canvas virtuel
   CanvasTempo := TCanvas.Create;
   Try
      //Création du contexte-Quand on utilise Display les autres paramètres sont nul
      CanvasTempo.Handle := CreateDC('DISPLAY', nil, nil, nil);
      Try
         //On affecte au canvas la fonte passée en paramètre
         CanvasTempo.Font   := aFonte;
         //Longueur en pixels du Texte
         LongueurTexte := CanvasTempo.TextHeight(Texte);
         //Retourne la longueur en pixels
         Result := LongueurTexte;
      Finally
         //On supprime le context
         DeleteDC(CanvasTempo.Handle);
         CanvasTempo.Handle := 0;
      End;
   Finally
   //On libère le canvas
   CanvasTempo.free;
   End;
End;
//----------------------------------------------------------------------------//
// Retour la longueur maximal par rapport à la fonte utilisée et le style     //
// des jours de la semaine                                                    //
//----------------------------------------------------------------------------//
Function LongueurPixelWidthMaxJour(Style:Integer;aFonte:Tfont):Integer;
Var JourCherche : String;
    x,ValeurDeRetour,ValeurMax : Integer;
Begin
   ValeurMax := 0;
   For x := 1 To 7  do
   Begin
      Jourcherche :='';
      Case Style of
      0:  Begin
          JourCherche := UpperCase(Copy(LongDayNames[X],1,1))+
                                      Copy(LongDayNames[X],2,Length(LongDayNames[X]));
          End;
      1:  Begin
          JourCherche := UpperCase(Copy(ShortDayNames[X],1,1))+
                                      Copy(ShortDayNames[X],2,Length(ShortDayNames[X]));
          End;
      2:  JourCherche :=  ' '+UpperCase(Copy(LongDayNames[X],1,1));
   End;
   ValeurDeRetour := GetDimensionTexteWidth(aFonte,JourCherche);
   ValeurMax :=Max(ValeurDeRetour,ValeurMax);
End;
Result := ValeurMax + 8;
End;
//----------------------------------------------------------------------------//
// Retour la hauteur maximal par rapport à la fonte utilisée                  //
// des jours de la semaine                                                    //
//----------------------------------------------------------------------------//
Function LongueurPixelHeightMaxJour(aFonte:TFont):Integer;
Var JourCherche : String;
    x,ValeurDeRetour,ValeurMax : Integer;
Begin
   ValeurMax      := 0;
   For x := 0 To 6  do
   Begin
      Jourcherche := UpperCase(LongDayNames[X]);
      ValeurDeRetour := GetDimensionTexteHeight(aFonte,JourCherche);
      ValeurMax :=Max(ValeurDeRetour,ValeurMax);
   End;
   Result := ValeurMax + 8;
End;

procedure TForm1.SpeedButton1Click(Sender: TObject);
Var Cellule,RecDessous :Trect;
ESPACEMENT_HORIZONTAL:Integer;
ESPACEMENT_VERTICAL,x,y:Integer;
n,journ,nligne,nColonne,DecalageJour,jourencours:integer;
    Mois        : Word;
    Annee       : Word;
    HIntervalle,VIntervalle : Integer;
    UneOuDeuxSemaines:Integer;
    numweek:integer;
    Genre : Integer;
    b,c:Tbitmap;
    Registry : TRegIniFile;
    PapierPeint:string;
    TitreCalendrier : String;
    Libellejoursemaine : Integer;
    BordureGauche,BordureduHaut,bordureadroite,borduredubas : Integer;
    arrangement :integer;
    Espace :Integer;
    Espaceh:Integer;
    IndexSysCouleur : Integer;
    BackGroundColor : TColor;
    ListAjout          :TListItem;
begin
Listview1.Clear;
Espace := 0     ;
Espaceh:=0;
IndexSysCouleur :=  COLOR_BACKGROUND;
BackGroundColor := ShapeFondImage.Brush.Color;
SetSysColors(1,IndexSysCouleur ,BackGroundColor);
Arrangement := Sens.Itemindex;
BordureGauche  := MMGAUCHE.Value;
BordureDuhaut  := MMHAUT.Value;
Bordureadroite := MMDROITE.Value;
Borduredubas   := MMBAS.Value;
HIntervalle := Spinedit1.Value;
VIntervalle := Spinedit2.Value;
TitreCalendrier := GetFormatMois(LibelleMois.ItemIndex,AfficheAnnee.checked);
PapierPeint := o_GetPathWinFolders(CSIDL_WINDOWS)+'\MonPapierPeint.bmp';
Lecturewallpaper;
journ := 1;
Genre := 0;
UneOuDeuxSemaines  := Semaine.Itemindex + 1;
Libellejoursemaine := Joursemaine.ItemIndex;
//Choix du commencement de la semaine un Dimanche ou un Lundi

JourEncours := (DayOfTheMonth(Now));
Mois        := (MonthOfTheYear(Now));
Annee       := (YearOf(Now));
//Décalage par rapport au choix début de semaine Lundi ou Dimanche
DecalageJour := ABS((FJourDebut Mod 7) - DayOfWeek(StartOfTheMonth(Now))) - 1;
If DecalageJour < 0 Then DecalageJour := 6;
//Nombre de ligne pour le calendrier -> Horizontalement
nLigne := ((DecalageJour) + DaysInMonth(Now)) Div (7 * UneOuDeuxSemaines);
//Incrémentation du nombre de ligne si il reste des jours à poser
If ((DecalageJour) + DaysInMonth(Now)) Mod (7 * UneOuDeuxSemaines) > 0 Then
     nLigne := nLigne + 1;
//Nombre de colonne pour le calendrier -> Verticalement
nColonne := nLigne;
If FJourDebut = 7 Then DecalageJour := DecalageJour - 7 + 1;
//Création Image De Travail
b := TBitmap.Create;
b.PixelFormat := pf24bit;
b.Width := Screen.Width;
B.Height := Screen.Height;
b.Canvas.Brush.color := BackGroundColor;
//Remplissage avec la couleur de fond
b.Canvas.FillRect(Rect(0,0,b.Width,b.Height));
//Si on a chargé une image on la place
If  (Image1.Picture.Graphic) <> Nil Then
    PlaceImage(b,Image1.Picture);
b.Canvas.Font   := Panel2.Font;
//Calcul de la longueur de la cellule en fonction de l'affichage du mois
LARGEUR_CELLULE_MOIS  := LargeurCelluleMois(b.Canvas,Libellemois.itemindex,AfficheAnnee.checked);
//Calcul de la Hauteur de la cellule du mois
HAUTEUR_CELLULE_MOIS  := HauteurCelluleMois(b.Canvas,0,True);
//Calcul de la largeur des jours de la semaine
ESPACEMENT_HORIZONTAL := LongueurPixelWidthMaxJour(Libellejoursemaine,Panel1.Font);
//Calcul de la hauteur des jours de la semaine
ESPACEMENT_VERTICAL   := LongueurPixelHeightMaxJour(Panel1.Font);
HAUTEUR_JOUR_SEMA     := LongueurPixelHeightMaxJour(Panel1.Font);
//Calcul de la largeur des chiffres du mois
LARGEUR_CELLULE_JOUR  := GetDimensionTexteWidth(Panel3.font,'000');
//Calcul de la hauteur des chiffres du mois
HAUTEUR_CELLULE_JOUR  := GetDimensionTexteHeight(Panel3.font,'00');
If Arrangement  = 1 Then ESPACEMENT_VERTICAL := Max(ESPACEMENT_VERTICAL,HAUTEUR_CELLULE_JOUR);
//Largeur Maximale des cellules en position horizontale
ESPACEMENT_HORIZONTAL := Max(ESPACEMENT_HORIZONTAL,LARGEUR_CELLULE_JOUR);
//Largeur de la cellule en fonction du choix horizontal ou vertical
If Arrangement = 0 Then
   Begin
   Cellule.Right := (ESPACEMENT_HORIZONTAL * 7 * UneOuDeuxSemaines)+((HIntervalle+Espaceh) *((7 * UneOuDeuxSemaines) - 1));
   HAUTEUR_TOTAL := (HAUTEUR_CELLULE_MOIS + (HAUTEUR_JOUR_SEMA + ((HAUTEUR_CELLULE_JOUR + 2 )* (nLigne))+((VIntervalle+espace) * (nLigne + 1))))+espace
   End
Else
   Begin
   Cellule.Right := ESPACEMENT_HORIZONTAL + (LARGEUR_CELLULE_JOUR * nColonne)+((HIntervalle+espaceh) * nColonne);
   nligne := 7 * UneOuDeuxSemaines ;
   HAUTEUR_TOTAL := HAUTEUR_CELLULE_MOIS + (ESPACEMENT_VERTICAL * nligne) + ((VIntervalle + espace) * nLigne)+espace;
   If AfficheSemaine.Checked  Then HAUTEUR_TOTAL :=  HAUTEUR_TOTAL + HAUTEUR_JOUR_SEMA + VIntervalle + espace + 2;
   End;
//On corrige la largeur si on demande a afficher les N° des semaines
If (UneOuDeuxSemaines  = 1) And (AfficheSemaine.Checked) And (Arrangement = 0) Then
   Cellule.Right  := Cellule.Right + ESPACEMENT_HORIZONTAL + HIntervalle+Espaceh;
//Quel est la cellule la plus large
Cellule.Right  := Max(LARGEUR_CELLULE_MOIS,Cellule.Right);
LARGEUR_TOTAL := Cellule.Right;
Case FCoinCalendrier of
1: Begin
      Cellule.Left   := BordureGauche;   // Position gauche de la cellule
      Cellule.Top    := BordureDuHaut;   // Position haut de la cellule
      Cellule.Bottom := BordureDuhaut + HAUTEUR_CELLULE_MOIS; //Hauteur de la cellule
      Cellule.Right  := BordureGauche + Cellule.Right;
   End;
3: Begin //En haut à droite
      BordureGauche  := (b.Width - Cellule.Right - BordureAdroite);
      Cellule.left   := BordureGauche;
      Cellule.Top    := BordureDuHaut;
      Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      Cellule.Right  := BordureGauche + Cellule.Right;
   End;
7: Begin //En bas à Gauche
      Bordureduhaut  := b.Height - HAUTEUR_TOTAL - BordureDubas;
      Cellule.Left   := BordureGauche;
      Cellule.Top    := BordureDuHaut;
      Cellule.bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      Cellule.Right  := BordureGauche + Cellule.Right;
   End;
5: Begin //En bas à Droite
      BordureGauche  := (b.width - Cellule.Right - BordureAdroite);
      BordureDuHaut  := b.Height - HAUTEUR_TOTAL - BordureDubas;
      Cellule.Left   := BordureGauche;
      Cellule.Top    := BordureDuHaut;
      Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      Cellule.right  := BordureGauche + Cellule.Right;
   End;
0: Begin //Centrer
      BordureGauche  := (b.Width - LARGEUR_TOTAL) Div 2;
      Cellule.Top    := (b.Height - HAUTEUR_TOTAL) Div 2;
      Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      Cellule.Left   := BordureGauche;
      Cellule.Right  := BordureGauche + Cellule.right;
   End;
2: Begin //Centrer en Haut
      Cellule.Top    := BordureDuHaut;
      Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      BordureGauche  := (b.Width - LARGEUR_TOTAL) Div 2;
      Cellule.Left   := BordureGauche;
      Cellule.Right  := BordureGauche + Cellule.Right;
   End;
6: Begin //Centrer en Bas
      BordureGauche  := (b.Width - LARGEUR_TOTAL) div 2;
      BordureDuhaut  := (b.Height - HAUTEUR_TOTAL - BordureDubas);
      Cellule.Left   := BordureGauche;
      Cellule.Top    := BordureDuHaut;
      Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
      Cellule.Right  := BordureGauche + Cellule.right;
    End;
8:Begin
     Cellule.Top    := (b.Height - HAUTEUR_TOTAL) Div 2;
     Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
     Cellule.Left   := BordureGauche;
     Cellule.Right  := BordureGauche + Cellule.Right;
  End;
4:Begin
     BordureGauche  := (b.Width - Cellule.Right - BordureAdroite);
     Cellule.Top    := (b.Height - HAUTEUR_TOTAL) Div 2;
     Cellule.Left   := BordureGauche;
     Cellule.Right  := BordureGauche + Cellule.right;
     Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_MOIS;
  End;
end;
//Couleur de fond de la cellule du titre du Calendrier
b.Canvas.Brush.color := ShapeMoisFond.Brush.color;
//Pose de la cellule du Titre du mois en fontion du valeur de la transparence
DrawTransparentRectangle(b.Canvas,Cellule,ShapeMoisFond.Brush.Color,Trans_Mois.Value);
//Pour que l'écriture se fasse en transparence
b.Canvas.Brush.Style := bsClear;
b.Canvas.Font.Color := ShapeFonteMois.Brush.Color;
//Ecriture du Titre du calendrier
DrawText(b.Canvas.Handle,PChar(TitreCalendrier),Length(TitreCalendrier),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
//Encadrement de la cellule du Mois si choix > 0
b.Canvas.Pen.Color := ShapeCadreMois.Brush.Color;
If EnCadreMois.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreMois.ItemIndex);
//On se repositionne pour la deuxième ligne des Cellules
Cellule.Top    := Cellule.Bottom + VIntervalle + Espace;
IF (AfficheSemaine.Checked)  And (UneOuDeuxSemaines = 0) Then
     Cellule.Bottom := Cellule.Top + HAUTEUR_JOUR_SEMA
Else Cellule.Bottom := Cellule.Top + ESPACEMENT_VERTICAL;
Cellule.Left  := BordureGauche;
Cellule.Right := BordureGauche +  ESPACEMENT_HORIZONTAL;
//Choix Position Horizontale ou Verticale
Case Arrangement Of
0:Begin
   b.Canvas.Font := Panel1.Font;
   //Ecriture des Jours de la Semaine horizontalement
   For x := 0 To (7 * UneOuDeuxSemaines) - 1 Do
   Begin
      b.Canvas.Font.Color  := ShapeCouleurPolice.Brush.Color;
      //Numéro du jour de la Semaine (1 à 7)  1->Lundi 2->Mardi Etc....
      n := (FJourDebut + x) Mod 7 + 1;
      DrawTransparentRectangle(b.Canvas,Cellule,ShapeSemaineFond.Brush.Color,Trans_Semaine.Value);
      b.Canvas.Pen.Color   := ShapeCadreSemaine.Brush.Color;
      If EnCadreSemaine.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreSemaine.ItemIndex);
      DrawText(b.Canvas.Handle,PChar(GetFormatJour(n,LibelleJourSemaine)),Length(GetFormatJour(n,LibelleJourSemaine)), Cellule, DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
      Cellule.Left  := Cellule.Right +  HIntervalle + Espaceh;
      Cellule.Right := Cellule.Left + ESPACEMENT_HORIZONTAL ;
   End;
   //Colonne supplémentaire si affichage pour une semaine et affichage voulu N°
   If (UneOuDeuxSemaines = 1) And (AfficheSemaine.Checked) Then
   Begin
      DrawTransparentRectangle(b.Canvas,Cellule,ShapeSemaineFond.Brush.Color,Trans_Semaine.Value);
      If EnCadreSemaine.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreSemaine.ItemIndex);
      DrawText(b.Canvas.Handle,PChar(Nil),Length(''),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
   End;
   //Placement des cellules des Jours
   For x := 0 To nligne -1 Do
      Begin
         b.Canvas.Font        := Panel3.Font;
         Cellule.Top    := Cellule.Bottom + VIntervalle + Espace;
         Cellule.Bottom := Cellule.Top + HAUTEUR_CELLULE_JOUR + 2;
         Cellule.Left   := BordureGauche;
         Cellule.Right  := BordureGauche + ESPACEMENT_HORIZONTAL;

         //Nombre de colonnes Horizontales calendrier posé horizontalement
         For y := 0 To 7 * UneOuDeuxSemaines - 1 Do
         Begin
            Journ := ((7 * UneOuDeuxSemaines) * x + y - FJourDebut + 2 - DecalageJour);
            If ((7 * UneOuDeuxSemaines) * x + y - DecalageJour >= Journ - 1) And
               (Journ <= DaysInMonth(Now)) And (Journ > 0) Then
               Begin
                ListAjout := ListView1.Items.Add;
         ListAjout.Caption := inttostr(journ);
         ListAjout.SubItems.Add(inttostr(Cellule.top));
         ListAjout.SubItems.Add(inttostr(Cellule.left));
                  b.Canvas.Font.Style  := Panel3.Font.Style;
                  b.Canvas.Font.Color  := ShapeJourFonte.Brush.Color;
                  b.Canvas.Pen.Color   := ShapeCadreJour.Brush.Color;
                  //C'est aujourd'hui
                  If Journ = JourEnCours Then
                     Begin
                        DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondJourEnCours.Brush.Color,Trans_JourEnCours.Value);
                        b.Canvas.Pen.Color  := ShapeCadreAujourdhui.Brush.Color;
                        If EnCadreJourEnCours.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJourEnCours.ItemIndex);
                        b.Canvas.Font.Color  := ShapePoliceJourEnCours.Brush.Color;
                        b.Canvas.Font.Style  :=  Panel3.Font.style;
                     End
                  Else
                  //Si c'est un Dimanche ou un Samedi
                  If (Dayofweek(Encodedate(Annee,Mois,Journ)) = 7) Or (Dayofweek(Encodedate(Annee,Mois,Journ)) = 1) Then
                  Begin
                     DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondWeekEnd.Brush.Color,Trans_WeekEnd.Value);
                     b.Canvas.Pen.Color   := ShapeCadreWeeKend.Brush.Color ;
                     If Encadre_WeekEnd.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,Encadre_WeekEnd.ItemIndex);
                     b.Canvas.Font.Color :=  ShapePoliceWeekEnd.Brush.Color;;
                  End Else
                  Begin
                     DrawTransparentRectangle(b.Canvas,Cellule,ShapeJourFond.Brush.Color,Trans_Jour.Value);
                     If EnCadreJour.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJour.ItemIndex);
                  End;
                  DrawText(b.Canvas.Handle,PChar(IntToStr(Journ)),Length(IntToStr(Journ)),Cellule, DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
               End
            Else
               Begin
                  DrawTransparentRectangle(b.Canvas,cellule,ShapeJourFond.Brush.color,Trans_Jour.value);
                  b.Canvas.Pen.Color   := ShapeCadreJour.Brush.Color;
                  If EnCadreJour.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJour.ItemIndex);
               End;
            Cellule.Left  := Cellule.Right + HIntervalle + EspaceH;
            Cellule.Right := Cellule.Left + ESPACEMENT_HORIZONTAL ;
         End;
         //Fin de la Semaine Quel est son numéro
         If (Journ <= DaysInMonth(Now)) And (UneOuDeuxSemaines = 1) And (AfficheSemaine.Checked) Then
            Begin
               b.Canvas.Font.Color := ShapePoliceNoSemaine.Brush.Color;
               b.Canvas.Pen.Color  := ShapeCadreNoSemaine.Brush.Color;
               DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondNoSemaine.Brush.Color,Trans_NoSemaine.Value);
               If EncadreNoSemaine.ItemIndex > 0  Then TracerCadre(b.Canvas,Cellule,EnCadreNoSemaine.ItemIndex);
               //Numéro de la semaine
               NumWeek := WeekOfTheYear(EncodeDate(Annee,Mois,Journ));
               DrawText(b.Canvas.Handle,PChar(IntToStr(NumWeek)),Length(IntToStr(NumWeek)),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
            End
         Else
         //On n'est plus dans le mois en cours
         If (UneOuDeuxSemaines = 1) And (AfficheSemaine.Checked) And (Journ >= DaysInMonth(Now))Then
         Begin
            b.Canvas.Font.Color := ShapePoliceNoSemaine.Brush.Color;
            DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondNoSemaine.Brush.Color,Trans_NoSemaine.Value);
            b.Canvas.Pen.Color := ShapeCadreNoSemaine.Brush.Color;
            If EncadreNoSemaine.ItemIndex > 0  Then TracerCadre(b.Canvas,Cellule,EnCadreNoSemaine.ItemIndex);
            NumWeek :=(WeekOfTheYear(encodedate(annee,mois,DaysInMonth(Now))));
            DrawText(b.Canvas.Handle,PChar(IntToStr(NumWeek)),Length(IntToStr(NumWeek)),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
      End;
   End;
END;
1:Begin
     b.Canvas.Font := Panel3.Font;
     If (UneOuDeuxSemaines = 1) And AfficheSemaine.Checked Then
     Begin
        Cellule.Left   := BordureGauche;
        Cellule.Right  := BordureGauche + ESPACEMENT_HORIZONTAL ;
        b.Canvas.Font.Color := ShapePoliceNoSemaine.Brush.Color;
        b.Canvas.Pen.Color := ShapeCadreSemaine.Brush.Color;
        DrawTransparentRectangle(b.Canvas,Cellule,ShapeSemaineFond.Brush.Color,Trans_Semaine.Value);
        If EnCadreSemaine.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreSemaine.ItemIndex);
        For x := 0 To nColonne - 1 Do
        Begin
           Cellule.Left   := Cellule.Right + HIntervalle + espaceh;
           Cellule.Right  := Cellule.Left + LARGEUR_CELLULE_JOUR;
           Journ := ((7 * (x + 1)) - 1 - FJourDebut  + 2 - DecalageJour);
           If Journ <= DaysInMonth(Now) Then
           Begin
              NumWeek :=(WeekOfTheYear(EncodeDate(Annee,Mois,Journ)));
              DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondNoSemaine.Brush.Color,Trans_NoSemaine.Value);
              b.Canvas.Pen.Color := ShapeCadreNoSemaine.Brush.Color;
              If EncadreNoSemaine.ItemIndex > 0  Then TracerCadre(b.Canvas,Cellule,EnCadreNoSemaine.ItemIndex);
              DrawText(b.Canvas.Handle,PChar(IntToStr(NumWeek)),Length(IntToStr(NumWeek)),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
           End
           Else
           If Journ >=DaysInMonth(Now) Then
           Begin
              NumWeek :=(WeekOfTheYear(EncodeDate(Annee,Mois,DaysInMonth(Now))));
              DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondNoSemaine.Brush.Color,Trans_NoSemaine.Value);
              b.Canvas.Pen.Color := ShapeCadreNoSemaine.Brush.Color;
              If EncadreNoSemaine.ItemIndex > 0  Then TracerCadre(b.Canvas,Cellule,EnCadreNoSemaine.ItemIndex);
              DrawText(b.Canvas.Handle,PChar(IntToStr(NumWeek)),Length(IntToStr(NumWeek)),Cellule,DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
           End;
        End;
        Cellule.Top    := Cellule.Bottom + VIntervalle + Espace;
        Cellule.Bottom := Cellule.Top + ESPACEMENT_VERTICAL + 2;
     End;
     For x := 0 To 7 * UneOuDeuxSemaines - 1 Do
     Begin
        n := (FJourDebut + x) Mod 7 + 1;
        Cellule.Left  := BordureGauche;
        Cellule.Right := BordureGauche + ESPACEMENT_HORIZONTAL;
        b.Canvas.Font := Panel1.Font;
        DrawTransparentRectangle(b.Canvas,Cellule,ShapeSemaineFond.Brush.Color,Trans_Semaine.Value);
        b.Canvas.Pen.Color := ShapeCadreSemaine.Brush.Color;
        If EnCadreSemaine.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreSemaine.ItemIndex);
        b.Canvas.Font.Color := ShapeCouleurPolice.Brush.Color;
        DrawText(b.Canvas.Handle,PChar(GetFormatJour(n,LibelleJourSemaine)),Length(GetFormatJour(n,LibelleJourSemaine)), Cellule, DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
        For y:= 0 To nColonne - 1 Do
        Begin
           Cellule.Left  := Cellule.Right + HIntervalle + espaceh;
           Cellule.Right := Cellule.Left + LARGEUR_CELLULE_JOUR ;
           b.Canvas.Pen.color := ShapeCadreJour.Brush.Color;
           b.Canvas.Font := Panel3.Font;
           journ := ((7 * UneOuDeuxSemaines) * y + x  - FJourDebut + 2 - DecalageJour);
           If (Journ > 0) And (Journ <= DaysInMonth(now)) Then
           Begin
                   ListAjout := ListView1.Items.Add;
         ListAjout.Caption := inttostr(journ);
         ListAjout.SubItems.Add(inttostr(Cellule.top));
         ListAjout.SubItems.Add(inttostr(Cellule.left));
              //Aujourd'hui
              If Journ = JourEnCours Then
                 Begin
                    DrawTransparentRectangle(b.Canvas,Cellule,ShapeFondJourEnCours.Brush.Color,Trans_JourEnCours.Value);
                    b.Canvas.Pen.Width   := 1;
                    b.Canvas.Pen.Color   := ShapeCadreAujourdhui.Brush.Color;
                    If EnCadreJourEnCours.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJourEnCours.ItemIndex);
                    b.Canvas.Font.Color  := ShapePoliceJourEnCours.Brush.Color;
                 End
              Else
              //Le jour est un Samedi ou un Dimanche
              If (DayofWeek(Encodedate(Annee,Mois,Journ)) = 7) Or (DayofWeek(Encodedate(Annee,Mois,Journ)) = 1) Then
                 Begin
                    b.Canvas.Font.Color := ShapePoliceWeekEnd.Brush.Color;
                    DrawTransparentRectangle(b.Canvas,cellule,ShapeFondWeekEnd.Brush.color,Trans_WeekEnd.value);
                    b.Canvas.Pen.Color   := ShapeCadreWeekEnd.Brush.Color;
                    If Encadre_WeekEnd.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,Encadre_WeekEnd.ItemIndex);
                 End
              Else
                 Begin
                    b.Canvas.Font:=  Panel3.Font;
                    b.Canvas.Font.Color := ShapeJourFonte.Brush.Color;
                    DrawTransparentRectangle(b.Canvas,Cellule,ShapeJourFond.Brush.Color,Trans_Jour.Value);
                    b.Canvas.Pen.color := ShapeCadreJour.Brush.Color;
                    If EnCadreJour.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJour.ItemIndex);
                End;
                //Ecriture du Jour sur l'image
                DrawText(b.Canvas.Handle,PChar(IntToStr(Journ)),Length(IntToStr(Journ)),Cellule, DT_CENTER Or DT_VCENTER Or DT_SINGLELINE);
           End Else
           Begin
              DrawTransparentRectangle(b.Canvas,Cellule,ShapeJourFond.Brush.Color,Trans_Jour.Value);
              If EnCadreJour.ItemIndex > 0 Then TracerCadre(b.Canvas,Cellule,EnCadreJour.ItemIndex);
           End;
        End;
        Cellule.Top := Cellule.Bottom + VIntervalle + Espace;
        Cellule.Bottom := Cellule.Top + ESPACEMENT_VERTICAL;
     End;
 End;
End;
     b.SaveToFile(PapierPeint);
     Registry := TRegIniFile.Create('Control Panel');
     Registry.WriteString('desktop', 'WallPaper', PapierPeint);
     Registry.Free;
     NotifyChangementPapierpeint ;
     sendmessage(handle,wm_wininichange,0,0);
     SmoothResize(b,image2.Width,image2.Height);
     image2.Picture.Bitmap.Width:=b.Width;
     image2.Picture.Bitmap.Height:=b.Height;
     image2.Picture.Bitmap.Assign(b);
     b.Free;
End;

Procedure NotifyChangementPapierpeint;
const
  CLSID_ActiveDesktop: TGUID = '{75048700-EF1F-11D0-9888-006097DEACF9}';
var
  ActiveDesktop: IActiveDesktop;
 { WallpaperOptions: TWallpaperOpt; }
begin
  if CheckShell32_471 then
  begin
    // Notifification via ActiveDesktop si Shell32.dll > 4.71
    ActiveDesktop := CreateComObject(CLSID_ActiveDesktop) as IActiveDesktop;
  {  WallpaperOptions.dwSize  := SizeOf(WallpaperOptions);
    WallpaperOptions.dwStyle := Style;
    ActiveDesktop.SetWallPaperOptions(WallpaperOptions ,0);
    ActiveDesktop.SetWallPaper(StringToLPOLESTR(FWallpaper),0); }
    ActiveDesktop.ApplyChanges(AD_APPLY_ALL or AD_APPLY_FORCE);
  end
  else
    // Notification via le bien classique SystemParametersInfo
    SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, nil,SPIF_UPDATEINIFILE + SPIF_SENDCHANGE +SPIF_SENDWININICHANGE);
    SendMessage(BureauLV,WM_SETTINGCHANGE,0,0);
    end;
//----------------------------------------------------------------------------//
// Vérification n° de version de la librairie Shell32.Dll                     //
//----------------------------------------------------------------------------//
Function CheckShell32_471 : Boolean;
Var
   tmpBuffer : PChar;
   Shell32Path : String;
   Version : Double;
   VersionMajor : Integer;
   VersionMinor : Integer;
   Blank : Integer;
Begin
   tmpBuffer := AllocMem(MAX_PATH);
   // Ou se trouve la librairie shell32.dll
   Try
      GetSystemDirectory(tmpBuffer, MAX_PATH);
      Shell32Path := tmpBuffer + '\shell32.dll';
   Finally
      FreeMem(tmpBuffer);
   End;
   // Si la librairie existe
   If FileExists(Shell32Path) Then
      Begin
         // Quelle est son numéro de Version
         GetFileVersion(Shell32Path, VersionMajor, VersionMinor, Blank, Blank);
         // Necessité d'avoir une version au moins égale à 4.71
         Version := VersionMajor + VersionMinor / 100;
         If Version >= 4.71 Then
            Result := True
         Else
            Result := False;
      End
    Else
      Result := False;
End;

Procedure GetFileVersion(FileName: string; var Major1, Major2,
  Minor1, Minor2: Integer);
{ Helper function to get the actual file version information }
var
  Info: Pointer;
  InfoSize: DWORD;
  FileInfo: PVSFixedFileInfo;
  FileInfoSize: DWORD;
  Tmp: DWORD;
begin
  // Get the size of the FileVersionInformatioin
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Tmp);
  // If InfoSize = 0, then the file may not exist, or
  // it may not have file version information in it.
  if InfoSize = 0 then
    raise Exception.Create('Can''t get file version information for '
      + FileName);
  // Allocate memory for the file version information
  GetMem(Info, InfoSize);
  try
    // Get the information
    GetFileVersionInfo(PChar(FileName), 0, InfoSize, Info);
    // Query the information for the version
    VerQueryValue(Info, '\', Pointer(FileInfo), FileInfoSize);
    // Now fill in the version information
    Major1 := FileInfo.dwFileVersionMS shr 16;
    Major2 := FileInfo.dwFileVersionMS and $FFFF;
    Minor1 := FileInfo.dwFileVersionLS shr 16;
    Minor2 := FileInfo.dwFileVersionLS and $FFFF;
  finally
    FreeMem(Info, FileInfoSize);
  end;
end;
//----------------------------------------------------------------------------//
// Contrôle du changement du papier peint du bureau                           //
//----------------------------------------------------------------------------//
Procedure TForm1.WM_SETTINGCHANGE(Var Message:TMessage);
Begin
   LectureWallpaper;
   IF FWallPaper <> '' Then
   Begin
      If FileExists(FWallPaper) Then
         Image2.Picture.LoadFromFile(FWallpaper);
   End
   Else Begin Image2.Picture.Assign(Nil); End;
End;
//----------------------------------------------------------------------------//
// Lecture du fichier servant au fond du bureau                               //
//----------------------------------------------------------------------------//
Procedure TForm1.LectureWallpaper;
Begin
   With TRegistry.Create Do
   Try
      RootKey:=HKEY_CURRENT_USER;
      If OpenKey('Control Panel\Desktop',False) Then
      Begin
        If ValueExists('Wallpaper') Then
        FWallpaper := ReadString('Wallpaper') Else
        FWallpaper := '';
        CloseKey;
     End;
   Finally
     Free;
   End;
End;

Function LargeurCelluleMois(Canvas:TCanvas;nSemaine:Integer;bAnnee:Boolean):Integer;
Begin
   Result := Canvas.TextWidth(GetFormatMois(nSemaine,bAnnee));
End;

Function HauteurCelluleMois(Canvas:TCanvas;nSemaine:Integer;bAnnee:Boolean):Integer;
Begin
   Result := Canvas.TextHeight(GetFormatMois(0,bAnnee));
End;
//---------------------------------------------------------------------------//
// Retourne le nom complet ou abrégé du mois en cours                        //
// Style --> 0 Nom Complet (Janvier) 1 Nom Abrégé --> Jan.                   //
//---------------------------------------------------------------------------//
Function GetFormatMois(Style:Integer;AfficheAnnee:Boolean):String;
Var Jour,Mois,Annee           : Word;
    MoisEnCours,ValeurDeRetour:String;
Begin
   DecodeDate(Now,Annee,Mois,Jour);
   Case Style Of
      0:
      Begin
         // Retourne le nom complet du Mois
         MoisEnCours    := LongMonthNames[Mois];
      End;
      1:
      Begin
      // Retourne le nom abrégé du Mois
         MoisEnCours    := ShortMonthNames[Mois];
      End;
   End;
   ValeurDeRetour := UpperCase(Copy(MoisEnCours,1,1))+
                               Copy(MoisEnCours,2,Length(MoisEnCours));
   IF AfficheAnnee Then
      Result :=  ValeurdeRetour +' '+ IntToStr(Annee)+ ' '
   Else
      Result := ValeurdeRetour + ' ';
End;



Procedure TForm1.FormCreate(Sender: TObject);
Begin
   If DebutSemaine.ItemIndex = 0 Then FJourDebut :=1 Else FJourDebut := 7;
   FCoinCalendrier := 6;
   FCoinImage      := 0;
   ShapeFondImage.Brush.Color := Getsyscolor(COLOR_BACKGROUND);
End;

procedure TForm1.DebutsemaineClick(Sender: TObject);
begin
If DebutSemaine.ItemIndex = 0 then FJourdebut := 1 Else FJourDebut := 7;
end;

procedure TForm1.SensClick(Sender: TObject);
begin
If (Semaine.Itemindex = 1) And (Sens.Itemindex = 1) Then Affichesemaine.Checked := False;
end;

Procedure TForm1.SemaineClick(Sender: TObject);
Begin
   If (Semaine.Itemindex = 1) Then
   Begin
      Affichesemaine.Checked := False;
      Affichesemaine.Enabled := False;
   End Else Affichesemaine.Enabled := True;
End;
//----------------------------------------------------------------------------//
// Procedure pour les speedbutton de placement du calendrier et de l'image    //
//----------------------------------------------------------------------------//
Procedure TForm1.MMPos1Click(Sender: TObject);
Begin
 // Le Groupe index N°1 correspond aux boutons de positionnement du calendrier
   Case (TSpeedbutton(Sender).GroupIndex) Of
   1 : {Choix de l'angle du calendrier}
      Begin
         Case TSpeedButton(Sender).Tag of
            0..8:  Begin
                      FCoinCalendrier := TSpeedButton(Sender).Tag;
                   End;
         End;
      End;
       // Le Groupe index N°2 correspond aux boutons de positionnement de l'image
   2 : {Choix de l'angle du papier peint}
      Begin
         Case TSpeedButton(Sender).Tag Of
            0..8:  Begin
                      FCoinImage       := TSpeedButton(Sender).Tag;
                   End;
         End;
      End;
   End;
end;
//---------------------------------------------------------------------------//
// Une pipette pour prendre la couleur à un endroit donné sur le bureau      //
//---------------------------------------------------------------------------//
Function DesktopColor(Const x,y: Integer):TColor;
Var
   BureauCanvas :TCanvas;
Begin
   BureauCanvas        := TCanvas.Create;
   BureauCanvas.Handle := GetWindowDC(GetDesktopWindow);
   Result              := GetPixel(BureauCanvas.Handle,x,y);
   BureauCanvas.Free;
End;
//----------------------------------------------------------------------------//
// Jouer sur la transparence d'une couleur dans un Rectangle                  //
// http://www.swissdelphicenter.ch                                            //
//----------------------------------------------------------------------------//
Procedure DrawTransparentRectangle(Canvas: TCanvas; Rect: TRect;
Color: TColor; Transparency: Integer);
Var
  X: Integer;
  Y: Integer;
  C: TColor;
  R, G, B: Integer;
  RR, RG, RB: Integer;
Begin
   RR := GetRValue(Color);
   RG := GetGValue(Color);
   RB := GetBValue(Color);
   For Y := Rect.Top To Rect.Bottom - 1 Do
   For X := Rect.Left To Rect.Right - 1 Do
   Begin
      C := Canvas.Pixels[X, Y];
      R := Round(0.01 * (Transparency * GetRValue(C) + (100 - Transparency) * RR));
      G := Round(0.01 * (Transparency * GetGValue(C) + (100 - Transparency) * RG));
      B := Round(0.01 * (Transparency * GetBValue(C) + (100 - Transparency) * RB));
      Canvas.Pixels[X, Y] := RGB(R, G, B);
   End;
End;
//----------------------------------------------------------------------------//
// Tracer un cadre autour des cellules                                        //
//----------------------------------------------------------------------------//
Procedure TracerCadre(Canvas : TCanvas;Rect : TRect;Index : Integer);
Var EPaisseur : Integer;
Begin
   With Canvas Do
   Begin
      EPaisseur := Pen.Width;
      //Tracer Epais
      Case Index of
      1 : Begin
             Pen.Width := 2;
             Rectangle(Rect.Left - 1,Rect.Top - 1,Rect.Right + 1,Rect.Bottom + 1);
          End;
      //Tracer simple
      2 : Begin
             Rectangle(Rect.Left,Rect.Top ,Rect.Right,Rect.Bottom);
          End;
      //Tracer double autour d'un rectangle
      3 : Begin
             Pen.Width := 1;
             Rectangle(Rect.Left - 1,Rect.Top - 1 ,Rect.Right + 1 ,Rect.Bottom + 1);
             Rectangle(Rect.Left + 1,Rect.Top +  1,Rect.Right - 1,Rect.Bottom - 1);
          End;
   End;
   Pen.Width := EPaisseur ;
   End;
End;
//----------------------------------------------------------------------------//
// Placer une image à l'endroit choisi                                        //
//----------------------------------------------------------------------------//
Procedure TForm1.Placeimage(Fond:TBitmap;Image:TPicture);
Var x,y ,w,h:Integer;
Begin
x := 0;
y := 0;
w := Image.Graphic.Width;
h := Image.Graphic.Height;
//Placement simple
Case Arrange_Image.Itemindex of
0 : Begin
       Case FCoinImage of
       0 : Begin  x := (Fond.Width - W) Div 2; y := (Fond.Height - H) Div 2;End;
       1 : Begin  x := 0; y := 0; End;
       2 : Begin  x := (Fond.Width - W) Div 2; y := 0; End;
       3 : Begin  x :=  Fond.Width - W; y := 0;End;
       4 : Begin  x := Fond.Width - W; y := (Fond.Height - H) Div 2;End;
       5 : Begin  x := Fond.Width - W; y := Fond.Height - H; End;
       7 : Begin  x := 0; y := Fond.Height - H; End;
       6 : Begin  x := (Fond.Width - W) Div 2;y := Fond.Height - H;End;
       8 : Begin  x := 0; y := (Fond.Height - H) Div 2;End;
       End;
       Fond.Canvas.draw(x,y,Image.Graphic);
    End;
//Placement en mosaique
1 : Begin
       While y < Fond.Height Do
       Begin
          x := 0;
          While x < Fond.Width Do
          Begin
             Fond.Canvas.Draw(x,y,Image.Graphic);
             Inc(x,w);
          End;
          Inc(y,h);
       End;
    End;
//Placement etirer
2 : Fond.Canvas.StretchDraw(Rect(0,0,Fond.Width,Fond.Height),Image.Graphic);
End;
End;
//----------------------------------------------------------------------------//
// Tirer de  o_Functions v03.10                                               //
// http://fobec.com/exemple/load_zip.php3?num=35                              //
//----------------------------------------------------------------------------//
Function o_GetPathWinFolders( _iddossier: integer ): string;
Type	//    API non déclarées dans SHFolder.dll
TSHGetFolderPath = Function(hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: PAnsiChar): HRESULT; stdcall;
Var    f_NomDossier: Array[ 0..MAX_PATH ] Of char;
      SHGetFolderPath : TSHGetFolderPath;
      f_LibHdl: THandle;
Begin
   Result:='';
   // Juste pour éviter un warning à la compilation
   @SHGetFolderPath:= Nil;
   // Charger SHFolder.dll
   f_LibHdl := LoadLibrary( PChar( 'SHFolder.dll' ) ) ;
   If f_LibHdl <> 0 Then
   @SHGetFolderPath:= GetProcAddress(  f_LibHdl ,  'SHGetFolderPathA'  );
   // Adresse API trouvée ??
   If @SHGetFolderPath <> Nil Then
   Begin
	SHGetFolderPath (0 ,  _iddossier ,  0 ,  0 ,  f_NomDossier );
	Result:=  f_NomDossier;
   End;
   // Libérer SHFolder.dll
   FreeLibrary(f_LibHdl);
   // Libérer mémoire
   @SHGetFolderPath := Nil ;
End;
procedure TForm1.ShapePoliceJourEnCoursMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 IF ChoixDesCouleurs.Execute Then
   Begin
      ShapePoliceJourEnCours.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeFondJourEnCoursMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeFondJourEnCours.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeJourFondMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeJourFond.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.Image10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Image10.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapePoliceNoSemaine.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;
End;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if ChoixFonteNomSemaine.Execute then
begin
Panel1.font := ChoixFonteNomSemaine.Font;
end

end;
procedure TForm1.Image10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image10.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image11.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeFondNoSemaine.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);

    End;

end;
procedure TForm1.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if choixfonteMois.execute then
begin
panel2.font := choixfonteMois.font;
end;
end;
procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if choixfontejour.execute then
begin
panel3.font := choixfontejour.font;
end;
end;
procedure TForm1.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image11.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapePoliceJourEnCours.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;
end;

procedure TForm1.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image8.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image8.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapefondJourEnCours.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;


end;

procedure TForm1.Image9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image9.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image9.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.ShapeFondNoSemaineMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeFondNoSemaine.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapePoliceNoSemaineMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapePoliceNoSemaine.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;
procedure TForm1.ImagePipetteFonteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
  CapturePixel: TPoint;

Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeCouleurPolice.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
       Panel1.Font.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;
end;

procedure TForm1.ImagePipetteFonteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ImagePipetteFonte.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.ImagePipetteFonteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 ImagePipetteFonte.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);

end;

procedure TForm1.ShapeCouleurPoliceMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCouleurPolice.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ImagePipetteJourMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ImagePipetteJour.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.ImagePipetteJourMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeJourFonte.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;
end;

procedure TForm1.ImagePipetteJourMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ImagePipetteJour.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
If openpicturedialog1.Execute then
   Image1.picture.loadfromfile(openpicturedialog1.filename);
end;

procedure TForm1.ShapeSemaineFondMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeSemaineFond.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image3.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeSemainefond.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;

end;

procedure TForm1.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image3.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image4.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeJourFond.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;

end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image4.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image5.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       Panel2.Font.Color:= DesktopColor(CapturePixel.X,CapturePixel.Y);
       ShapeFonteMois.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;

end;

procedure TForm1.Image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image6.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeMoisfond.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);
    End;
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image6.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.ShapeMoisFondMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeMoisFond.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image5.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;
procedure TForm1.ShapeJourFonteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeJourFonte.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeFonteMoisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeFonteMois.Brush.Color := ChoixDesCouleurs.Color;
      Panel2.Font.Color := ShapeFonteMois.Brush.Color;
   End;
end;

procedure TForm1.Image12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image12.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapePoliceWeekEnd.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);

    End;

end;

procedure TForm1.Image12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image12.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.ShapePoliceWeekEndMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapePoliceWeekEnd.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.Image13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image13.Transparent := False;
   MonCurseur :=  LoadCursor(hInsTance ,'Curseur1');
   SetCursor(MonCurseur);
   // On charge le curseur de la pipette pour capturer le Pixel
   Timer1.Enabled := True;
end;

procedure TForm1.Image13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  CapturePixel: TPoint;
Begin
    If (Timer1.Enabled) Then
    Begin
       // A Quelles coordonnées se trouvent le Curseur
       GetCursorPos(CapturePixel);
       ShapeFondWeekEnd.Brush.Color := DesktopColor(CapturePixel.X,CapturePixel.Y);

    End;

end;

procedure TForm1.Image13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Image13.Transparent := True;
   Timer1.Enabled := False;
   // Destruction du curseur chargé par LoadCursor
   DestroyCursor(MonCurseur);
end;

procedure TForm1.ShapeFondWeekEndMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeFondWeekEnd.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;


procedure TForm1.ShapeCadreJourMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreJour.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeCadreWeeKendMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreWeeKend.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeCadreAujourdhuiMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreAujourdhui.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeCadreNoSemaineMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreNoSemaine.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeCadreSemaineMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreSemaine.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeCadreMoisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeCadreMois.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;

procedure TForm1.ShapeFondImageMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
IF ChoixDesCouleurs.Execute Then
   Begin
      ShapeFondImage.Brush.Color := ChoixDesCouleurs.Color;
   End;
end;
 
// Procedure de Machester source sur ce site  delphifr.com
// Fast Smoth Resize
// Par moyenne de pixels...
//  1
// 101
//  1
// Donne un tres bon resultat et est tres rapide ...
// !!!!!!!!!!! doit etre adapter pour l'agrandit !!!!!!!!!!
// (je l'ai ecrite pour la prèvisualisation rapide d'images qui sont toutes +
// grandes que l'espace de prèvisualisation...)
procedure SmoothResize(Var Bmp :Tbitmap;NewWidth, NewHeight:Integer);
var x,y             : integer;
    p1,p2,p3,pd     : pbytearray;
    TmpBmp          : Tbitmap;
    xt,bx,bx1,bx2,by: Longint;
    pasx,pasy,px,py : Real;
begin
 TmpBmp:=Tbitmap.Create;
 TmpBmp.Width:=NewWidth;
 TmpBmp.Height:=NewHeight;
 TmpBmp.PixelFormat :=pf24bit;
 Bmp.PixelFormat :=pf24bit;
 pasx:=bmp.Width/NewWidth;
 pasy:=bmp.Height/NewHeight;
 py:=1;
 try
 for y:=0 to NewHeight-1 do
 begin
  px:=1;
  by:=round(py);
  p1:=Bmp.scanline[by-1];
  p2:=Bmp.scanline[by];
  p3:=Bmp.scanline[by+1];
  pd:=TmpBmp.scanline[y];
  for x:=0 to NewWidth-1 do
  begin
   xt:=x+x+x;
   Bx:=round(px)*3;
   Bx1:=round(px-1)*3;
   Bx2:=round(px+1)*3;
   pd[xt]  :=byte((p1[bx]+p1[bx1]+p1[bx2]+
                   p2[bx]+p2[bx1]+p2[bx2]+
                   p3[bx]+p3[bx1]+p3[bx2]) div 9);
   pd[xt+1]:=byte((p1[bx+1]+p1[bx1+1]+p1[bx2+1]+
                   p2[bx+1]+p2[bx1+1]+p2[bx2+1]+
                   p3[bx+1]+p3[bx1+1]+p3[bx2+1]) div 9);
   pd[xt+2]:=byte((p1[bx+2]+p1[bx1+2]+p1[bx2+2]+
                   p2[bx+2]+p2[bx1+2]+p2[bx2+2]+
                   p3[bx+2]+p3[bx1+2]+p3[bx2+2]) div 9);
   px:=px+pasx;
  end;
  py:=py+pasy;
 end;
 except
 end;
 bmp.assign(TmpBmp);
 TmpBmp.Free;
end;


Initialization
BureauLV := FindWindowEx(GetDesktopWindow, 0, 'Progman'          , Nil);
BureauLV := FindWindowEx(BureauLV        , 0, 'SHELLDLL_DefView' , Nil);
BureauLV := FindWindowEx(BureauLV        , 0, 'SysListView32'    , Nil);
end.

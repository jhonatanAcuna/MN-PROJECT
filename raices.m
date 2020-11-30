function varargout = raices(varargin)
% RAICES MATLAB code for raices.fig
%      RAICES, by itself, creates a new RAICES or raises the existing
%      singleton*.
%
%      H = RAICES returns the handle to a new RAICES or the handle to
%      the existing singleton*.
%
%      RAICES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RAICES.M with the given input arguments.
%
%      RAICES('Property','Value',...) creates a new RAICES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before raices_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to raices_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help raices

% Last Modified by GUIDE v2.5 30-Nov-2020 10:15:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @raices_OpeningFcn, ...
                   'gui_OutputFcn',  @raices_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before raices is made visible.
function raices_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to raices (see VARARGIN)

% Choose default command line output for raices
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
setGlobalx(0);
set(handles.panelmetodos,"Visible","off");
set(handles.panelteclado,"Visible","off");
set(handles.panelnavegacion,"Visible","off");
set(handles.principal,"Visible","on");

% UIWAIT makes raices wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = raices_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 funcion = get(handles.edit1, 'String');
 intervalo = [str2num(get(handles.limIzq, 'String')) str2num(get(handles.limDer, 'String'))]
    
 hold off;
    
 fplot(handles.axes1,funcion, intervalo);

 hold on;
 grid on;
 set(handles.axes1,'XColor','w');
 set(handles.axes1,'YColor','w');
 set(handles.axes1,'GridColor','k');

% --- Executes on button press in boton_limpiar.
function boton_limpiar_Callback(hObject, eventdata, handles)
ini=char(' ');
set(handles.edit1,'String',ini);
set(handles.Raiz,'String',ini);
set(handles.uitable,'data','');
cla;
clc;

% Hint: get(hObject,'Value') returns toggle state of boton_limpiar


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function limIzq_Callback(hObject, eventdata, handles)
% hObject    handle to limIzq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limIzq as text
%        str2double(get(hObject,'String')) returns contents of limIzq as a double


% --- Executes during object creation, after setting all properties.
function limIzq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limIzq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function limDer_Callback(hObject, eventdata, handles)
% hObject    handle to limDer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limDer as text
%        str2double(get(hObject,'String')) returns contents of limDer as a double


% --- Executes during object creation, after setting all properties.
function limDer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limDer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- GLOBAL
function setGlobalx(val)
global x
x = val;

function r = getGlobalx
global x
r=x;



% --- Executes on button press in btn_Zoom.
function btn_Zoom_Callback(hObject, eventdata, handles)
global x;
if(x==0)
    zoom on;
    setGlobalx(1);
else
    zoom off;
    setGlobalx(0);
end
% hObject    handle to btn_Zoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   

% Hint: get(hObject,'Value') returns toggle state of btn_Zoom


% --- Executes on button press in btn_Pad.
function btn_Pad_Callback(hObject, eventdata, handles)
global x;
if(x==0)
    pan on;
    setGlobalx(1);
else
    pan off;
    setGlobalx(0);
end

% --- Executes on button press in btn_Grid.
function btn_Grid_Callback(hObject, eventdata, handles)
% hObject    handle to btn_Grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of btn_Grid


% --- Executes on key press with focus on btn_Zoom and none of its controls.
function btn_Zoom_KeyPressFcn(hObject, eventdata, handles)



function eT_error_Callback(hObject, eventdata, handles)
% hObject    handle to eT_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eT_error as text
%        str2double(get(hObject,'String')) returns contents of eT_error as a double


% --- Executes during object creation, after setting all properties.
function eT_error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eT_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tecClear.
function tecClear_Callback(hObject, eventdata, handles)
ini=char(' ');
set(handles.edit1,'String',ini);

% --- Executes on button press in tecNumber2.
function tecNumber2_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'2'));

% --- Executes on button press in tecClearAll.
function tecClearAll_Callback(hObject, eventdata, handles)
ini=char(' ');
set(handles.edit1,'String',ini);
set(handles.Raiz,'String',ini);
set(handles.uitable,'data','');
cla;
clc;

% --- Executes on button press in tecNumber3.
function tecNumber3_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'3'));


% --- Executes on button press in tecNumber1.
function tecNumber1_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'1'));


% --- Executes on button press in tecSin.
function tecSin_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'sin('));


% --- Executes on button press in tecTan.
function tecTan_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'tan('));


% --- Executes on button press in tecNumber6.
function tecNumber6_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'6'));


% --- Executes on button press in tecNumber9.
function tecNumber9_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'9'));

% --- Executes on button press in tecNumber8.
function tecNumber8_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'8'));

% --- Executes on button press in tecNumber7.
function tecNumber7_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'7'));

% --- Executes on button press in tecNumber5.
function tecNumber5_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'5'));

% --- Executes on button press in tecNumber4.
function tecNumber4_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'4'));

% --- Executes on button press in tecCos.
function tecCos_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'cos('));

% --- Executes on button press in tecExp.
function tecExp_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'exp('));

% --- Executes on button press in tecLogN.
function tecLogN_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'ln('));

% --- Executes on button press in tecPow.
function tecPow_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'.^'));

% --- Executes on button press in tecSuma.
function tecSuma_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'+'));


% --- Executes on button press in tecResta.
function tecResta_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'-'));


% --- Executes on button press in tecMult.
function tecMult_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'.*'));

% --- Executes on button press in tecDivi.
function tecDivi_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'./'));

% --- Executes on button press in tecRaiz.
function tecRaiz_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'.^(1/'));


% --- Executes on button press in tecVariable.
function tecVariable_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'x'));


% --- Executes on button press in tecOpen.
function tecOpen_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,'('));


% --- Executes on button press in tecClose.
function tecClose_Callback(hObject, eventdata, handles)
cat=get(handles.edit1,'String');
set(handles.edit1,'String',strcat(cat,')'));


% --- Executes on button press in menuExit.
function menuExit_Callback(hObject, eventdata, handles)
set(handles.panelmetodos,"Visible","off");
set(handles.panelteclado,"Visible","off");
set(handles.panelnavegacion,"Visible","off");
set(handles.principal,"Visible","on");

% --- Executes on button press in menuMeNu.
function menuMeNu_Callback(hObject, eventdata, handles)
set(handles.panelmetodos,"Visible","on");
set(handles.panelteclado,"Visible","on");
set(handles.panelnavegacion,"Visible","on");
set(handles.principal,"Visible","off");

% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uiPSiEc_CreateFcn(hObject, eventdata, handles)
set(handles.uiPSiEc,"Visible","off");


% --------------------------------------------------------------------
function sisTag_Callback(hObject, eventdata, handles)
% hObject    handle to sisTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uiSisEcu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uiSisEcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function panelmetodos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panelmetodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnpriexit.
function btnpriexit_Callback(hObject, eventdata, handles)
cla;
clc;
close(handles.output);


% --- Executes on button press in btnPriMetNum.
function btnPriMetNum_Callback(hObject, eventdata, handles)
%set(handles.panelmetodos,"Visible","on");
%set(handles.panelteclado,"Visible","on");
%set(handles.panelnavegacion,"Visible","on");
%set(handles.principal,"Visible","off");
set(handles.teoria,"Visible", "on");


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
set(handles.panelmetodos,"Visible","off");
set(handles.panelteclado,"Visible","off");
set(handles.panelnavegacion,"Visible","off");
set(handles.principal,"Visible","off");
set(handles.teoria,"Visible","on");



% --- Executes on selection change in menuForms.
function menuForms_Callback(hObject, eventdata, handles)
% hObject    handle to menuForms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menuForms contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menuForms


% --- Executes during object creation, after setting all properties.
function menuForms_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuForms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function limInf_Callback(hObject, eventdata, handles)
% hObject    handle to limInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limInf as text
%        str2double(get(hObject,'String')) returns contents of limInf as a double


% --- Executes during object creation, after setting all properties.
function limInf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function limSup_Callback(hObject, eventdata, handles)
% hObject    handle to limSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limSup as text
%        str2double(get(hObject,'String')) returns contents of limSup as a double


% --- Executes during object creation, after setting all properties.
function limSup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resolver.
function resolver_Callback(hObject, eventdata, handles)
% hObject    handle to resolver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
funcion = get(handles.edit1, 'String');
limiInf = get(handles.limInf, 'String');
limiSup = get(handles.limSup, 'String');
tole = get(handles.eT_error, 'String');
tipoRes = get(handles.menuForms, 'Value');
switch(tipoRes)
    case 1  %biseccion
        fun = inline(funcion);
        a = str2num(limiInf);
        b = str2num(limiSup);
        tol = str2double(tole);
        tab = {'a','b','m','f(a)','f(b)','f(m)','error'};
        %uitable
        if a>b
            aa=a ; 
            a=b ;
            b=aa ;
        end 
        xm=(a+b ) / 2 ;
        if fun ( a ) *fun ( b )>0 
            set(handles.Raiz, 'String', 'ERROR: Revise el intervalo');
            drawnow;
        elseif abs (b - a )<tol
            raiz=xm ;
        else
            cont=2;
            while ( ( fun ( xm ) ~=0)&& abs (b - a )>tol )
                if fun ( xm ) *fun ( b )<0
                    a=xm ;
                else
                    b=xm ;
                end 
                xm=(a+b ) / 2 ;
                tab(cont,:) = {a,b,xm,fun(a),fun(b),fun(b),abs(b-a)};
                cont = cont+1;
            end
            raiz=xm ;
        end
        set(handles.Raiz, 'String', num2str(raiz));
        set(handles.uitable,'Data',tab);
        drawnow;
        
    case 2  %newton
        syms x;
        x0 = str2num(limiInf);
        f  = inline(funcion);
        dxf= inline(diff(str2sym(funcion),x));
        N = 2;
        tol = str2double(tole);
        
        maxDiv = 10000;
        x =x0;
        tab = {'i','x','f(x)','n(x)','error'};
        while (N<10000)
            xn = x -f(x)/dxf(x );
            tab(N,:) = {N-1,x,f(x),xn,abs(f(x))};
            if abs(f(xn))<tol
                x =xn;
                iter=100-N;
                set(handles.Raiz, 'String', num2str(x));
                set(handles.uitable,'Data',tab);
                drawnow;
                break;
            end;
            if abs(f(x ))>maxDiv
                set(handles.Raiz, 'String', 'Se alcanzo el numero maximo de iteraciones');
                set(handles.uitable,'Data',tab);
                drawnow;
                break;
            end;
            N = N + 1;
            x = xn;
            
         end;
        if N == 10000
         set(handles.Raiz, 'String', 'La solucion no converge');
        end
         
    case 3  %secante
        fun = inline(funcion);
        a = str2num(limiInf);
        b = str2num(limiSup);
        tol = str2double(tole);
        
        u=fun(a);
        v=fun(b);
        c=2;
        p0=a;
        p1=b;
        tab = {'i','x','x-1','x+1','f(x)','f(x-1)','error'};
        while abs (u)>tol
            tab(c,:) = {c,p0,p1,(p0-u*(p1-p0)/(v-u)),u,v,abs(u)};
            p=p0-u*(p1-p0)/(v-u);
            p0=p;
            p1=b;
            u=fun(p0);
            v=fun(p1);
            c=c+1
        end
        
        set(handles.Raiz, 'String', num2str(p0));
        set(handles.uitable,'Data',tab);
        drawnow;
        
    case 4  %falsa posicion
        Fx = funcion;
        a = str2num(limiInf);
        c = str2num(limiSup);
        e = str2double(tole);
        
        x=a;
        Fa=eval(Fx);
        x=c;
        Fc=eval(Fx);
        cont=1;
        tab = {'i','a','b','f(a)','f(b)','c','f(c)','error'};
        while abs(c-a)>e
            cont = cont+1;
            b=(c*Fa-a*Fc)/(Fa-Fc);
            x=b;
            Fb=eval(Fx);
            tab(cont,:) = {cont,a,b,Fa,Fb,c,Fc,abs(c-a)};
            if abs(Fc)<e
                 break;
            else    
                if Fa*Fb<=0
                    c=b;
                    Fc=Fb;
                else
                     a=b;
                    Fa=Fb;
                end
            end
        end
        set(handles.Raiz, 'String', num2str(b));
        set(handles.uitable,'Data',tab);
        drawnow;
        
   otherwise
       set(handles.Raiz, 'String', 'ERROR: metodo no encontrado');
end
%writecell to save data in excel file
%set(handles.Raiz, 'String', 'sdf');
%drawnow;


    


% --- Executes on button press in exportButton.
function exportButton_Callback(hObject, eventdata, handles)
% hObject    handle to exportButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ruteEdit,'visible','on');
set(handles.selectTypeExport, 'visible','on');
set(handles.exportReady, 'visible','on');
set(handles.nameFile,'visible','on');
set(handles.text77,'visible','on');
set(handles.text78,'visible','on');



function ruteEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ruteEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ruteEdit as text
%        str2double(get(hObject,'String')) returns contents of ruteEdit as a double


% --- Executes during object creation, after setting all properties.
function ruteEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ruteEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in selectTypeExport.
function selectTypeExport_Callback(hObject, eventdata, handles)
% hObject    handle to selectTypeExport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selectTypeExport contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selectTypeExport


% --- Executes during object creation, after setting all properties.
function selectTypeExport_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selectTypeExport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exportReady.
function exportReady_Callback(hObject, eventdata, handles)
% hObject    handle to exportReady (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ruteFile = get(handles.ruteEdit, 'String');
nameFile = get(handles.nameFile, 'String');
data = get(handles.uitable, 'data');
disp(string(data));
typeFile = get(handles.selectTypeExport, 'Value');

switch(typeFile)
    case 1
        ruteFull = strcat(ruteFile,'\',nameFile,'.csv');
        writematrix(string(data),ruteFull);
    case 2
        ruteFull = strcat(ruteFile,'\',nameFile,'.xlsx');
        xlswrite(ruteFull,data);
    case 3
        ruteFull = strcat(ruteFile,'\',nameFile,'.txt');
        writecell(data,ruteFull);
    otherwise
        
end



function nameFile_Callback(hObject, eventdata, handles)
% hObject    handle to nameFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nameFile as text
%        str2double(get(hObject,'String')) returns contents of nameFile as a double


% --- Executes during object creation, after setting all properties.
function nameFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function teoria_CreateFcn(hObject, eventdata, handles)
% hObject    handle to teoria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
set(handles.principal,"Visible","on");
set(handles.teoria,"Visible","off");
set(handles.panelmetodos,"Visible","off");
set(handles.panelteclado,"Visible","off");
set(handles.panelnavegacion,"Visible","off");


% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
set(handles.nombreMetodo,"String","Metodo de Biseccion");
set(handles.metodDefinicion,"String","Es el método más elemental y antiguo para determinar las raíces de una ecuación. Está basado directamente en el teorema de Bolzano Consiste en partir de un intervalo [x0,x1]tal que f(x0)f(x1) < 0, por lo que sabemos que existe, al menos, una raíz real. A partir de este punto se va reduciendo el intervalo sucesivamente hasta hacerlo tan pequeño como exija la precisión que hayamos decidido emplear.")


% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
set(handles.nombreMetodo,"String","Metodo de Newton");
set(handles.metodDefinicion,"String","El método numérico de Newton es una aplicación del cálculo diferencial que se utiliza para hallar los ceros de una función derivable de enésimo grado con la precisión deseada. Los procedimientos para hallar las raíces o ceros de funciones lineales o cuadráticas a partir de los coeficientes de la ecuación son sencillos y exactos. Aunque existen fórmulas para hallar las raíces de ecuaciones de tercer y cuarto grado, dichas formulas son muy complicadas y nada prácticas.");


% --- Executes on button press in pushbutton82.
function pushbutton82_Callback(hObject, eventdata, handles)
set(handles.nombreMetodo,"String","Metodo de Falsa posicion");
set(handles.metodDefinicion,"String","Aun cuando la bisección es una técnica perfectamente válida para determinar raíces, su método de aproximación por fuerza bruta es relativamente ineficiente. La falsa posición es una alternativa basada en una visualización gráfica.Un inconveniente del método de bisección es que al dividir el intervalo de x1 a xu en mitades iguales, no se toman en cuenta las magnitudes de f(x1) y f(xu). Por ejemplo, si f(x1) está mucho más cercana a cero quef(xu), es lógico que la raíz se encuentre más cerca de x1 que de xu. Un método alternaticvo que aprovecha esta visualización gráfica consiste en unir f(x1) y f(xu) con una línea recta. La intersección de esta línea con el eje de las x representa un mejor aproximación de la raíz. El hecho de que se reemplace la curva por una línea recta de una falsa posición de la raíz; de aquí el nombre de método de la falsa posición, o en latín,regula falsi. También se le conoce como método de interpolación lineal.");


% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
set(handles.nombreMetodo,"String","Metodo de la Secante")
set(handles.metodDefinicion,"String","El método de la secante es un método para encontrar los ceros de una función de forma iterativa. Uno de los objetivos de este método es eliminar el problema de la derivada de la función, ya que existen funciones que describen fenómenos físicos en la vida real, cuya derivada es muy compleja.");


% --- Executes on button press in pushbutton84.
function pushbutton84_Callback(hObject, eventdata, handles)
set(handles.panelmetodos,"Visible","on");
set(handles.panelteclado,"Visible","on");
set(handles.panelnavegacion,"Visible","on");
set(handles.principal,"Visible","off");
set(handles.teoria,"Visible","off");

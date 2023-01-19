function varargout = Zad2(varargin)
% ZAD2 MATLAB code for Zad2.fig
%      ZAD2, by itself, creates a new ZAD2 or raises the existing
%      singleton*.
%
%      H = ZAD2 returns the handle to a new ZAD2 or the handle to
%      the existing singleton*.
%
%      ZAD2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZAD2.M with the given input arguments.
%
%      ZAD2('Property','Value',...) creates a new ZAD2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Zad2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Zad2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Zad2

% Last Modified by GUIDE v2.5 08-Jun-2022 16:36:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Zad2_OpeningFcn, ...
    'gui_OutputFcn',  @Zad2_OutputFcn, ...
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


% --- Executes just before Zad2 is made visible.
function Zad2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Zad2 (see VARARGIN)

% Choose default command line output for Zad2
handles.output = hObject;
global kanal
kanal = 1;
global index
index =1;
global index_novi
index_novi = 1;
global promena_vremena
promena_vremena  = 0;
global t
t =5;
global odb 
odb = 160;
lista_kanali{1} = 'Kanal 1';
lista_kanali{2} = 'Kanal 2';
lista_kanali{3} = 'Kanal 3';
lista_kanali{4} = 'Kanal 4';
lista_kanali{5} = 'Kanal 5';
lista_kanali{6} = 'Kanal 6';
lista_kanali{7} = 'Kanal 7';
lista_kanali{8} = 'Kanal 8';
lista_kanali{9} = 'Kanal 9';
lista_kanali{10} = 'Kanal 10';
lista_kanali{11} = 'Kanal 11';
lista_kanali{12} = 'Kanal 12';
lista_kanali{13} = 'Kanal 13';
lista_kanali{14} = 'Kanal 14';
lista_kanali{15} = 'Kanal 15';
lista_kanali{16} = 'Kanal 16';
lista_kanali{17} = 'Kanal 17';
lista_kanali{18} = 'Kanal 18';
lista_kanali{19} = 'Kanal 19';
lista_kanali{20} = 'Kanal 20';
lista_kanali{21} = 'Kanal 21';
lista_kanali{22} = 'Kanal 22';
lista_kanali{23} = 'Kanal 23';
lista_kanali{24} = 'Kanal 24';
set(handles.popupmenuIzborKanala,'String', lista_kanali);
axes(handles.axes3)
A = imread ('rasporedKANALASMARTING.jpg'); 
imshow(A)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Zad2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Zad2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenuIzborKanala.
function popupmenuIzborKanala_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuIzborKanala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kanal
global index
index=kanal;
kanal = get(handles.popupmenuIzborKanala,'Value');
global index_novi
index_novi = kanal;


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuIzborKanala contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuIzborKanala


% --- Executes during object creation, after setting all properties.
function popupmenuIzborKanala_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuIzborKanala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vreme_Callback(hObject, eventdata, handles)
% hObject    handle to vreme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vreme as text
%        str2double(get(hObject,'String')) returns contents of vreme as a double


% --- Executes during object creation, after setting all properties.
function vreme_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vreme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbuttonStart.
function pushbuttonStart_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kanal
global t
global uslov
global s
global index
global index_novi
global promena_vremena
global odb 

CH1_uV = [];
%global cuvanje
%cuvanje=[];
%try
    s = serial('COM9');
    set(s,'BaudRate', 921600, 'DataBits', 8,'StopBits', 1, 'FlowControl', 'hardware');
    s.InputBufferSize = 5000;
    %port se otvara tek nakon
    fopen(s);
    pause(0.5)
    fwrite(s,'>NORMAL<')
    char(fread(s,4))
    fwrite(s,['>SC;',255 255 255 ,'<'])
    char(fread(s,4))
    fwrite(s,'>ON<')
    char(fread(s,4))
    
    
    uslov = 1;
    
    f0= 160;
    odbirci = round(f0*t);
    v_prikaz = zeros(1,odbirci);
    k_prikaz = zeros(1,odbirci);
    
    while uslov
        %Provera da li je doslo do promene signala
        if index_novi ~= index
            v_prikaz = zeros(1,odbirci);
            k_prikaz = zeros(1,odbirci);
            index_novi = index;
        end
        t_staro= t;
        t = str2num(get(handles.vreme,'String'));
        %Provera da li je doslo do promene vremena
        if ~(isempty(t)) && t~=t_staro
            promena_vremena = 1;
        else
            t = t_staro;
        end
        
        
        if promena_vremena
            promena_vremena = 0;
            f0= 160;
            odbirci = round(f0*t);
            v_prikaz = zeros(1,odbirci);
            k_prikaz = zeros(1,odbirci);
        end
        broj_bajtova = s.BytesAvailable;
        if broj_bajtova >0 && uslov
            poruka_cela = fread(s,broj_bajtova);
            pot_poc = find(poruka_cela == 62);
            pravi_poc = [];
            for i = 1:length(pot_poc)
                if pot_poc(i)+82 <= broj_bajtova
                    if poruka_cela(pot_poc(i)+82) == 60
                        pravi_poc = [pravi_poc pot_poc(i)];
                    end
                end
                
            end
            CH_vrednosti = [];
            GyroX = [];
            for j = 1:length(pravi_poc)
                CH1_vrednosti_petlja = [];
                GyroX_bajtovi = poruka_cela(pravi_poc(j)+74:pravi_poc(j)+75);
                GyroX_vr = konverzija2(GyroX_bajtovi);
                set(handles.pushbutton13,'String',GyroX_vr);
                GyroX = [GyroX GyroX_vr];
                for kanali= 1:24
                    CH_bajtovi = poruka_cela(pravi_poc(j)+3*(kanali-1)+1:pravi_poc(j)+3+3*(kanali-1));
                                   
                    CH1_vrednost = konverzija(CH_bajtovi);
                    %dimenzije 1x24
                    CH1_vrednosti_petlja =[CH1_vrednosti_petlja CH1_vrednost];
          
                end
                CH1_vrednosti_petlja = uV(CH1_vrednosti_petlja);
                CH_vrednosti = [CH_vrednosti; CH1_vrednosti_petlja];
            end
            CH1_uV = [CH1_uV; CH_vrednosti];
            
            v_prikaz = [v_prikaz CH_vrednosti(:,kanal)'];
            v_prikaz(1:length(CH_vrednosti(:,kanal)))=[];
            
            k_prikaz = [k_prikaz GyroX];
            k_prikaz(1:length(GyroX))= [];
            vreme = 0:1/f0:t-1/f0;
            
            
            axes(handles.axes1)
            plot(vreme,v_prikaz)
            ylabel('Signal (uV)')
            ymax = max(v_prikaz)+100;
            ymin = min(v_prikaz)-100;
            ylim([ymin ymax])
            xlim([0 t])
            xlabel('Vreme (s)')
            drawnow
            
            axes(handles.axes2)
            grid on 
            plot(vreme,k_prikaz)
            ylabel('Klasa')
            xlabel('Vreme (s)')
            ylim([0 3])
            xlim([0 t])
            drawnow
            
            vrsta = size(CH1_uV,1);

            if vrsta >= odb
                disp('sss')
                prozor = CH1_uV(1:odb,:);
                snaga_kanala = izracunaj_snagu(prozor);
                CH1_uV =[];
                button=[handles.pushbutton1, handles.pushbutton2, handles.pushbutton3, handles.pushbutton4, handles.pushbutton5, handles.pushbutton6, handles.pushbutton7, handles.pushbutton8, handles.pushbutton9];
                vr_reg = vrednost_regiona(snaga_kanala);
                %cuvanje  = [cuvanje; vr_reg];
                for g=1:9
                   set(button(g),'String',vr_reg(g));
                   if vr_reg(g)>= 0.15
                        set(button(g),'BackgroundColor','red');
                    elseif vr_reg(g)>= 0.1 && vr_reg(g)<= 0.15
                        set(button(g),'BackgroundColor','yellow');
                    elseif vr_reg(g)>= 0.05 && vr_reg(g)<= 0.1
                        set(button(g),'BackgroundColor','green');
                   else 
                       set(button(g),'BackgroundColor','blue');
                   end
                end
                
            end
        end
        
    end
    
    
%catch
%    msgbox('Prikaz podataka je vec pokrenut ili SmartingEMU nije povezan na pravi COM port.')
%end


% --- Executes on button press in pushbuttonStop.
function pushbuttonStop_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global uslov
%global cuvanje 
global s
try
    
    uslov = 0;
   % save('ft.mat','cuvanje')
    flushinput(s)
    fwrite(s,'>OFF<')
    char(fread(s,4))
    
    fclose(s);
    clear s;
catch
    msgbox('Prikaz podataka je vec prekinut.')
end


% --- Executes on button press in pushbutton2.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
global odb

if str2num(get(handles.edit3,'String'))~= 160
    odb =round(str2num(get(handles.edit3,'String')));
end

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

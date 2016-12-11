function varargout = main_principal(varargin)
% MAIN_PRINCIPAL MATLAB code for main_principal.fig
%      MAIN_PRINCIPAL, by itself, creates a new MAIN_PRINCIPAL or raises the existing
%      singleton*.
%
%      H = MAIN_PRINCIPAL returns the handle to a new MAIN_PRINCIPAL or the handle to
%      the existing singleton*.
%
%      MAIN_PRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_PRINCIPAL.M with the given input arguments.
%
%      MAIN_PRINCIPAL('Property','Value',...) creates a new MAIN_PRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_principal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_principal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_principal

% Last Modified by GUIDE v2.5 11-Dec-2016 18:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_principal_OpeningFcn, ...
                   'gui_OutputFcn',  @main_principal_OutputFcn, ...
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


% --- Executes just before main_principal is made visible.
function main_principal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_principal (see VARARGIN)

% Choose default command line output for main_principal
handles.output = hObject;


set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.operacoes, 'Visible', 'Off');
set(handles.axes1, 'Visible', 'Off');
set(handles.axes2, 'Visible', 'Off');
set(handles.button_previousImage, 'Visible', 'Off');
set(handles.original_Image, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes main_principal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_principal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in button_previousImage.
function button_previousImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_previousImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAtual=handles.imagemAnterior;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);

% --- Executes on button press in original_Image.
function original_Image_Callback(hObject, eventdata, handles)
% hObject    handle to voltarOriginal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imshow(handles.imagemOriginal, 'Parent', handles.axes1);
handles.imagemAtual=handles.imagemOriginal;
guidata(hObject, handles);



% --------------------------------------------------------------------
function Ficheiro_Callback(hObject, eventdata, handles)
% hObject    handle to Ficheiro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function operacoes_Callback(hObject, eventdata, handles)
% hObject    handle to operacoes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ajuste_Callback(hObject, eventdata, handles)
% hObject    handle to ajuste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function abrir_Callback(hObject, eventdata, handles)
% hObject    handle to abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.operacoes, 'Visible', 'On');
set(handles.axes1, 'Visible', 'On');
set(handles.axes2, 'Visible', 'On');
set(handles.button_previousImage, 'Visible', 'On');
set(handles.original_Image, 'Visible', 'On');

[filename,path ] = uigetfile('*.*','Abrir Imagem');
handles.imagemOriginal = imread(strcat(path,filename));
handles.imagemAtual=handles.imagemOriginal;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
imshow(handles.imagemAtual, 'Parent', handles.axes2);
guidata(hObject, handles);


% --------------------------------------------------------------------
function guardar_Callback(hObject, eventdata, handles)
% hObject    handle to guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,path ] = uiputfile('*.jpg','Guardar Imagem');
imwrite(handles.imagemAtual, strcat(path,filename));
guidata(hObject, handles);



% --------------------------------------------------------------------
function grayscale_Callback(hObject, eventdata, handles)
% hObject    handle to grayscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'Off');
if(ndims(handles.imagemAtual)==3)
    handles.imagemAnterior = handles.imagemAtual;
    handles.imagemAtual = rgb2gray(handles.imagemAtual);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);

    elseif(ndims(handles.imagemAtual)<3)
         msgbox('Não é possivel transformar a imagem em grayscale', 'Error','error');
end
guidata(hObject, handles);


% --------------------------------------------------------------------
function binario_Callback(hObject, eventdata, handles)
% hObject    handle to binario (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'On');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');



% --------------------------------------------------------------------
function negativo_Callback(hObject, eventdata, handles)
% hObject    handle to negativo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'Off');
handles.imagemAnterior = handles.imagemAtual;
handles.imagemAtual = imcomplement(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);


% --------------------------------------------------------------------
function histogramas_Callback(hObject, eventdata, handles)
% hObject    handle to histogramas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function histoMathlab_Callback(hObject, eventdata, handles)
% hObject    handle to histoMathlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'Off');
handles.imagemAnterior = handles.imagemAtual;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
axes(handles.axes1);
imhist(handles.imagemAtual);
guidata(hObject, handles);


% --------------------------------------------------------------------
function histoAlunos_Callback(hObject, eventdata, handles)
% hObject    handle to histoAlunos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
set(handles.painelThreshold, 'Visible', 'Off');
handles.imagemAnterior = handles.imagemAtual;
imshow(handles.imagemAtual, 'Parent', handles.axes2);
histograma=histFuncaoAlunos(handles.imagemAtual);
axes(handles.axes1);
bar(histograma);
axis([0 255 0 max(histograma)+1]);

guidata(hObject, handles);



function editThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to editThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editThreshold as text
%        str2double(get(hObject,'String')) returns contents of editThreshold as a double


% --- Executes during object creation, after setting all properties.
function editThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in binarioThreshold.
function binarioThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to binarioThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(handles.checkbox1, 'value')==1)
    handles.imagemAtual = im2bw(handles.imagemAtual);
else
   handles.imagemAtual = im2bw(handles.imagemAtual,str2double(get(handles.editThreshold, 'String')));
end
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of checkbox1
% --------------------------------------------------------------------






% --------------------------------------------------------------------
function intensidadeCor_Callback(hObject, eventdata, handles)
% hObject    handle to intensidadeCor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'On');
% Update handles structure
guidata(hObject, handles);

% --- Executes on slider movement.
function sliderIntensidadeCor_Callback(hObject, eventdata, handles)
% hObject    handle to sliderIntensidadeCor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.imagemAnterior=handles.imagemAtual;
valorIntensidade=get(handles.sliderIntensidadeCor,'Value');
assignin('base','valorSlider', valorIntensidade);
handles.imagemItensificada=handles.imagemAtual*valorIntensidade;
imshow(handles.imagemItensificada, 'Parent', handles.axes1);
% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function sliderIntensidadeCor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderIntensidadeCor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function transfGeo_Callback(hObject, eventdata, handles)
% hObject    handle to transfGeo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function rotacao_Callback(hObject, eventdata, handles)
% hObject    handle to rotacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelAngulo, 'Visible', 'On');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
guidata(hObject, handles);



% --------------------------------------------------------------------
function translacao_Callback(hObject, eventdata, handles)
% hObject    handle to translacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mudaEscala_Callback(hObject, eventdata, handles)
% hObject    handle to mudaEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelEscala, 'Visible', 'On');
set(handles.painelAngulo, 'Visible', 'Off');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
guidata(hObject, handles);



function editAngulo_Callback(hObject, eventdata, handles)
% hObject    handle to editAngulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAngulo as text
%        str2double(get(hObject,'String')) returns contents of editAngulo as a double


% --- Executes during object creation, after setting all properties.
function editAngulo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAngulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonRotacao.
function buttonRotacao_Callback(hObject, eventdata, handles)
% hObject    handle to buttonRotacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.painelAngulo, 'Visible', 'On');
set(handles.painelIntensidadeCor, 'Visible', 'Off');
handles.imagemAnterior=handles.imagemAtual;

handles.anguloInserido=0;
handles.anguloInserido=get(handles.editAngulo, 'String');
handles.anguloInserido=str2num(handles.anguloInserido);
handles.imagemAtual=imrotate(handles.imagemAtual, handles.anguloInserido, 'nearest');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

set(handles.editAngulo,'String','');

% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function painelEscala_CreateFcn(hObject, eventdata, handles)
% hObject    handle to painelEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function editLargura_Callback(hObject, eventdata, handles)
% hObject    handle to editLargura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLargura as text
%        str2double(get(hObject,'String')) returns contents of editLargura as a double


% --- Executes during object creation, after setting all properties.
function editLargura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLargura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAltura_Callback(hObject, eventdata, handles)
% hObject    handle to editAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAltura as text
%        str2double(get(hObject,'String')) returns contents of editAltura as a double


% --- Executes during object creation, after setting all properties.
function editAltura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes on button press in botaoEscala.
function botaoEscala_Callback(hObject, eventdata, handles)
% hObject    handle to botaoEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update handles structure
guidata(hObject, handles);



% --------------------------------------------------------------------
function equalizacaoHisto_Callback(hObject, eventdata, handles)
% hObject    handle to equalizacaoHisto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(ndims(handles.imagemAtual)==2)
        handles.imagemAnterior = handles.imagemAtual;
        HIST=adapthisteq(handles.imagemAtual);
        axes(handles.axes2);
        imhist(HIST);
        imshow(HIST, 'Parent', handles.axes1);
    elseif(ndims(handles.imagemAtual)==3)
         msgbox('Não é possivel efetuar esta acção pois a iamgem não se encontra em Grayscale', 'Error','error');
end
guidata(hObject, handles);


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

% Last Modified by GUIDE v2.5 21-Nov-2016 16:41:32

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


% --- Executes on button press in button_openImage.
function button_openImage_Callback(hObject, eventdata, handles)
[filename,path ] = uigetfile('*.*','Abrir Imagem');
handles.imagemOriginal = imread(strcat(path,filename));
handles.imagemAtual=handles.imagemOriginal;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
imshow(handles.imagemAtual, 'Parent', handles.axes2);
guidata(hObject, handles);
% hObject    handle to button_openImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in button_saveImage.
function button_saveImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_saveImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,path ] = uiputfile('*.jpg','Guardar Imagem');
imwrite(handles.imagemAtual, strcat(path,filename));


% --- Executes on button press in button_BinaryImage.
function button_BinaryImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_BinaryImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAnterior = handles.imagemAtual;
handles.imagemAtual = im2bw(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);

% --- Executes on button press in button_GrayscaleImage.
function button_GrayscaleImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_GrayscaleImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAnterior = handles.imagemAtual;
handles.imagemAtual = rgb2gray(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);

% --- Executes on button press in button_negativeImage.
function button_negativeImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_negativeImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAnterior = handles.imagemAtual;
handles.imagemAtual = imcomplement(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);

% --- Executes on button press in button_previousImage.
function button_previousImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_previousImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAtual=handles.imagemAnterior;

imshow(handles.imagemAtual, 'Parent', handles.axes1);
guidata(hObject, handles);


% --- Executes on button press in button_intensityImage.
function button_intensityImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_intensityImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in button_histogramImage.
function button_histogramImage_Callback(hObject, eventdata, handles)
% hObject    handle to button_histogramImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imagemAnterior = handles.imagemAtual;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
axes(handles.axes1);
imhist(handles.imagemAtual);
guidata(hObject, handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in original_Image.
function original_Image_Callback(hObject, eventdata, handles)
% hObject    handle to voltarOriginal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imshow(handles.imagemOriginal, 'Parent', handles.axes1);

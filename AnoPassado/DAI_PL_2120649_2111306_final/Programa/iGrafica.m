function varargout = iGrafica(varargin)
% IGRAFICA MATLAB code for iGrafica.fig
%      IGRAFICA, by itself, creates a new IGRAFICA or raises the existing
%      singleton*.
%
%      H = IGRAFICA returns the handle to a new IGRAFICA or the handle to
%      the existing singleton*.
%
%      IGRAFICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IGRAFICA.M with the given input arguments.
%
%      IGRAFICA('Property','Value',...) creates a new IGRAFICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iGrafica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iGrafica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iGrafica

% Last Modified by GUIDE v2.5 04-Jan-2016 14:12:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iGrafica_OpeningFcn, ...
                   'gui_OutputFcn',  @iGrafica_OutputFcn, ...
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
end

% --- Executes just before iGrafica is made visible.
function iGrafica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iGrafica (see VARARGIN)

% Choose default command line output for iGrafica
handles.output = hObject;
handles.imagemAtual = [];
handles.translacaoY = 0;
handles.translacaoX = 0;

%set(handles.sliderZoom, 'Value', 1);

set(handles.imagem, 'Visible', 'Off');

set(handles.axes1, 'Visible', 'Off');
set(handles.axes2, 'Visible', 'Off');
set(handles.axes3, 'Visible', 'Off');
set(handles.axes4, 'Visible', 'Off');
set(handles.axes5, 'Visible', 'Off');
set(handles.axes6, 'Visible', 'Off');

set(handles.painelAxesEsquerda, 'Visible', 'Off');
set(handles.painelIntensidade, 'Visible', 'Off');
set(handles.painelEscala, 'Visible', 'Off');
set(handles.painelRotacao, 'Visible', 'Off');
set(handles.painelPixeisRgb, 'Visible', 'Off');
set(handles.painelPixeisGray, 'Visible', 'Off');

set(handles.btnCortar, 'Visible', 'Off');
set(handles.btnAnterior, 'Visible', 'Off');
set(handles.btnPosterior, 'Visible', 'Off');
set(handles.btnReset, 'Visible', 'Off');
set(handles.btnTranslacaoC, 'Visible', 'Off');
set(handles.btnTranslacaoD, 'Visible', 'Off');
set(handles.btnTranslacaoB, 'Visible', 'Off');
set(handles.btnTranslacaoE, 'Visible', 'Off');

set(handles.popupMenuFiltros, 'Visible', 'Off');

%set(handles.sliderZoom, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iGrafica wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = iGrafica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


% --------------------------------------------------------------------
function ficheiro_Callback(hObject, eventdata, handles)
% hObject    handle to ficheiro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Ficheiro

if(isempty(handles.imagemAtual))
    set(handles.fGuardar, 'Visible', 'Off');
else
    set(handles.fGuardar, 'Visible', 'On');
end

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function imagem_Callback(hObject, eventdata, handles)
% hObject    handle to imagem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem

end

% --------------------------------------------------------------------
function iModo_Callback(hObject, eventdata, handles)
% hObject    handle to iModo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Modo

end

% --------------------------------------------------------------------
function iModoTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iModoTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço Menus

end

% --------------------------------------------------------------------
function iAjuste_Callback(hObject, eventdata, handles)
% hObject    handle to iAjuste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste

end

% --------------------------------------------------------------------
function iAjusteTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iAjusteTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iEscala_Callback(hObject, eventdata, handles)
% hObject    handle to iEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Escala (Mostra o painelEscala)

set(handles.painelEscala, 'Visible', 'On');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRotacao_Callback(hObject, eventdata, handles)
% hObject    handle to iRotacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Rotação

end

% --------------------------------------------------------------------
function iRotacaoTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iRotacaoTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iPixeis_Callback(hObject, eventdata, handles)
% hObject    handle to iPixeis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Pixéis (Mostra o painelPixeisRgb ou o painelPixeisGray)

if (size (handles.imagemAtual,3)==3)
    set(handles.painelPixeisRgb, 'Visible', 'On');
    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    set(handles.painelPixeisGray, 'Visible', 'On');
    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iPixeisTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iPixeisTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iHistograma_Callback(hObject, eventdata, handles)
% hObject    handle to iHistograma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Histograma (Função Histograma de Barras)

axes(handles.axes4);
histograma(handles.imagemAtual);
set(gca,'XColor','white');
set(gca,'YColor','white');
set(handles.axes4, 'Visible', 'On');
% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function iHistogramaTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iHistogramaTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iRuido_Callback(hObject, eventdata, handles)
% hObject    handle to iRuido (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ruído

end

% --------------------------------------------------------------------
function iFiltros_Callback(hObject, eventdata, handles)
% hObject    handle to iFiltros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Filtros
%(Filtra a imagem, tanto em RGB como em Grayscale)

set(handles.popupMenuFiltros, 'Visible', 'On');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iFiltrosTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iFiltrosTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iSegmentacao_Callback(hObject, eventdata, handles)
% hObject    handle to iSegmentacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação

end

% --------------------------------------------------------------------
function fAbrir_Callback(hObject, eventdata, handles)
% hObject    handle to fAbrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Ficheiro > Abrir

[handles.filename,handles.filepath] = uigetfile('*.jpg;*.jpeg;*.tif;*.png;*.gif','Selecionar Imagem');
handles.caminho = strcat(handles.filepath,handles.filename);

handles.imagemOriginal=imread(handles.caminho);
handles.imagemAtual=handles.imagemOriginal;

imshow(handles.imagemAtual, 'Parent',handles.axes1);
imshow(handles.imagemOriginal, 'Parent',handles.axes2);
axes(handles.axes3);
imhist(rgb2gray(handles.imagemOriginal));

set(handles.imagem, 'Visible', 'On');

set(handles.axes1, 'Visible', 'On');
set(handles.axes2, 'Visible', 'On');
set(gca,'XColor','white');
set(gca,'YColor','white');
set(handles.axes3, 'Visible', 'On');

set(handles.btnCortar, 'Visible', 'On');
set(handles.btnAnterior, 'Visible', 'On');
set(handles.btnPosterior, 'Visible', 'On');
set(handles.btnReset, 'Visible', 'On');

%set(handles.sliderZoom, 'Visible', 'On');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function fGuardar_Callback(hObject, eventdata, handles)
% hObject    handle to fGuardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Ficheiro > Guardar

handles.imagemFinal = getimage(handles.axes1);
[fileName,pathName] = uiputfile('*.jpg;*.jpeg;*.tif;*.png;','Guardar Imagem','exemplo');
handles.caminho = fullfile(pathName,fileName);
imwrite(handles.imagemFinal, handles.caminho);

if ~isempty(handles.axes4 && handles.axes5 && handles.axes6)
    delete (handles.axes4);
    delete (handles.axes5);
    delete (handles.axes6);
end
set(handles.painelAxesEsquerda, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMetodos_Callback(hObject, eventdata, handles)
% hObject    handle to iSMetodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos

end

% --------------------------------------------------------------------
function iSContornos_Callback(hObject, eventdata, handles)
% hObject    handle to iSContornos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos

end

% --------------------------------------------------------------------
function iRGaussian_Callback(hObject, eventdata, handles)
% hObject    handle to iRGaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ruído > Gaussian (Põe a imagem com ruído gaussian)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imnoise(handles.imagemAtual, 'gaussian');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRPoisson_Callback(hObject, eventdata, handles)
% hObject    handle to iRPoisson (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ruído > Poisson (Põe a imagem com ruído poisson)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imnoise(handles.imagemAtual, 'poisson');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRSaltPepper_Callback(hObject, eventdata, handles)
% hObject    handle to iRSaltPepper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ruído > Salt & Pepper
%(Põe a imagem com ruído salt & pepper)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imnoise(handles.imagemAtual, 'salt & pepper');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRSpeckle_Callback(hObject, eventdata, handles)
% hObject    handle to iRSpeckle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ruído > Speckle (Põe a imagem com ruído speckle)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imnoise(handles.imagemAtual, 'speckle');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRCentoOitentaD_Callback(hObject, eventdata, handles)
% hObject    handle to iRCentoOitentaD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Rotação > 180º D
%(Roda a imagem para a direita a 180 graus, tanto em RGB como em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual = imrotate(handles.imagemAtual, 180, 'nearest');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRNoventaD_Callback(hObject, eventdata, handles)
% hObject    handle to iRNoventaD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Rotação > 90º D
%(Roda a imagem para a direita a 90 graus, tanto em RGB como em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual = imrotate(handles.imagemAtual, 90, 'nearest');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRNoventaE_Callback(hObject, eventdata, handles)
% hObject    handle to iRNoventaE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Rotação > 90º E
%(Roda a imagem para a esquerda a 90 graus, tanto em RGB como em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual = imrotate(handles.imagemAtual, -90, 'nearest');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iRNoventaETraco_Callback(hObject, eventdata, handles)
% hObject    handle to iRNoventaETraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iRPersonalizar_Callback(hObject, eventdata, handles)
% hObject    handle to iRPersonalizar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Rotação > Personalizar (Mostra o painelRotacao)

set(handles.painelRotacao, 'Visible', 'On');

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function iABinaria_Callback(hObject, eventdata, handles)
% hObject    handle to iABinaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Binária (Põe a imagem em Binária)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=im2bw(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iANegativo_Callback(hObject, eventdata, handles)
% hObject    handle to iANegativo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Negativo (Põe a imagem em Negativo)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imcomplement(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iANegativoTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iANegativoTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iAEqualizacao_Callback(hObject, eventdata, handles)
% hObject    handle to iAEqualizacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Equalização

end

% --------------------------------------------------------------------
function iAEqualizacaoTraco_Callback(hObject, eventdata, handles)
% hObject    handle to iAEqualizacaoTraco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Traço menus

end

% --------------------------------------------------------------------
function iAIntensidade_Callback(hObject, eventdata, handles)
% hObject    handle to iAIntensidade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Intensidade (Mostra o painelIntensidade)

set(handles.painelIntensidade, 'Visible', 'On');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iATranslacao_Callback(hObject, eventdata, handles)
% hObject    handle to iATranslacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Intensidade (Mostra o painelIntensidade)

set(handles.btnTranslacaoC, 'Visible', 'On');
set(handles.btnTranslacaoD, 'Visible', 'On');
set(handles.btnTranslacaoB, 'Visible', 'On');
set(handles.btnTranslacaoE, 'Visible', 'On');

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iMGrayscale_Callback(hObject, eventdata, handles)
% hObject    handle to iMGrayscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Modo > Grayscale (Converter imagem RGB em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=rgb2gray(handles.imagemAtual);
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iAEEqualizacaoHistograma_Callback(hObject, eventdata, handles)
% hObject    handle to iAEEqualizacaoHistograma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Equalização > Equalização do Histograma
%(Equaliza a imagem, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    set(handles.painelAxesEsquerda, 'Visible', 'On');
    axes(handles.axes5);
    histograma(handles.imagemAtual);
    ylabel('Antes da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes5, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagem_hsv=rgb2hsv(handles.imagemAtual);
    handles.imagem_v=handles.imagem_hsv(:,:,3);
    handles.imagem_v=histeq(handles.imagem_v);
    handles.imagem_hsv(:,:,3)=handles.imagem_v;
    handles.imagem_rgb=hsv2rgb(handles.imagem_hsv);
    imshow(handles.imagem_rgb, 'Parent', handles.axes1);
    
    handles.imagemAtual=handles.imagem_rgb;
    handles.imagemPosterior=handles.imagemAtual;
    % Update handles structure
    guidata(hObject, handles);
    
    cla(handles.axes6);
    set(handles.axes6, 'Visible', 'Off');
    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    set(handles.painelAxesEsquerda, 'Visible', 'On');
    axes(handles.axes5);
    histograma(handles.imagemAtual);
    ylabel('Antes da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes5, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemAtual = histeq(handles.imagemAtual);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;
    % Update handles structure
    guidata(hObject, handles);
     
    axes(handles.axes6);
    histograma(handles.imagemAtual);
    ylabel('Depois da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes6, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
end
end

% --------------------------------------------------------------------
function iAEHistogramaAdaptativo_Callback(hObject, eventdata, handles)
% hObject    handle to iAEHistogramaAdaptativo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Ajuste > Equalização > Histograma Adaptativo
%(Equaliza a imagem, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    set(handles.painelAxesEsquerda, 'Visible', 'On');
    axes(handles.axes5);
    histograma(handles.imagemAtual);
    ylabel('Antes da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes5, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
    
    handles.imagemAnterior=handles.imagemAtual;
     
    handles.imagem_hsv=rgb2hsv(handles.imagemAtual);
    handles.imagem_v=handles.imagem_hsv(:,:,3);
    handles.imagem_v=adapthisteq(handles.imagem_v);
    handles.imagem_hsv(:,:,3)=handles.imagem_v;
    handles.imagem_rgb=hsv2rgb(handles.imagem_hsv);
    imshow(handles.imagem_rgb, 'Parent', handles.axes1);
    
    handles.imagemAtual=handles.imagem_rgb;
    handles.imagemPosterior=handles.imagemAtual;
    % Update handles structure
    guidata(hObject, handles);
    
    cla(handles.axes6);
    set(handles.axes6, 'Visible', 'Off');
    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    set(handles.painelAxesEsquerda, 'Visible', 'On');
    axes(handles.axes5);
    histograma(handles.imagemAtual);
    ylabel('Antes da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes5, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
    
    handles.imagemAnterior=handles.imagemAtual;
     
    handles.imagemAtual = adapthisteq(handles.imagemAtual);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;
    % Update handles structure
    guidata(hObject, handles);
     
    axes(handles.axes6);
    histograma(handles.imagemAtual);
    ylabel('Depois da Equalização','FontName','Helvetica','FontSize',9,'FontWeight','bold','Color','white');
    set(gca,'XColor','white');
    set(gca,'YColor','white');
    set(handles.axes6, 'Visible', 'On');
    % Update handles structure
    guidata(hObject,handles);
end
end

% --------------------------------------------------------------------
function iSMSobel_Callback(hObject, eventdata, handles)
% hObject    handle to iSMSobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Model
%(Põe a imagem com segmentação sobel)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'sobel');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMPrewitt_Callback(hObject, eventdata, handles)
% hObject    handle to iSMPrewitt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Prewitt
%(Põe a imagem com segmentação prewitt)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'prewitt');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMRoberts_Callback(hObject, eventdata, handles)
% hObject    handle to iSMRoberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Roberts
%(Põe a imagem com segmentação roberts)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'roberts');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMLaplacianGaussian_Callback(hObject, eventdata, handles)
% hObject    handle to iSMLaplacianGaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Laplacian of Gaussian 
%(Põe a imagem com segmentação laplacian of gaussian)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'log');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMZeroCross_Callback(hObject, eventdata, handles)
% hObject    handle to iSMZeroCross (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Zero-Cross 
%(Põe a imagem com segmentação laplacian of zero-cross)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'zerocross');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --------------------------------------------------------------------
function iSMCanny_Callback(hObject, eventdata, handles)
% hObject    handle to iSMCanny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Métodos > Canny 
%(Põe a imagem com segmentação laplacian of canny)

imgGray(handles.imagemAtual);

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=edge(handles.imagemAtual, 'canny');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end


% --- Executes on button press in btnCortar.
function btnCortar_Callback(hObject, eventdata, handles)
% hObject    handle to btnCortar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Botão Cortar

handles.imagemAnterior=handles.imagemAtual;

handles.imagemAtual=imcrop(handles.axes1);
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end


% --- Executes on button press in btnAnterior.
function btnAnterior_Callback(hObject, eventdata, handles)
% hObject    handle to btnAnterior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Botão Anterior

handles.imagemAtual=handles.imagemAnterior;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
% Update handles structure
guidata(hObject,handles);
end

% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Botão Reset

handles.imagemAtual=handles.imagemOriginal;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnPosterior.
function btnPosterior_Callback(hObject, eventdata, handles)
% hObject    handle to btnPosterior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Botão Posterior

handles.imagemAtual=handles.imagemPosterior;
imshow(handles.imagemAtual, 'Parent', handles.axes1);
% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mQuaDesativar_Callback(hObject, eventdata, handles)
% hObject    handle to mQuaDesativar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes4 > Desativar (Desativa o Axes4)

cla;
set(handles.axes4, 'Visible', 'Off');

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mQuaOnGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mQuaOnGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes4 > On Grid (Ativa a Grelha no Axes4)

grid on;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mQuaOffGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mQuaOffGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes4 > On Grid (Desativa a Grelha no Axes4)

grid off;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function menuAxes4_Callback(hObject, eventdata, handles)
% hObject    handle to menuAxes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes4

end

% --------------------------------------------------------------------
function menuAxes5_Callback(hObject, eventdata, handles)
% hObject    handle to menuAxes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes5

end

% --------------------------------------------------------------------
function mQuaLimparAxes_Callback(hObject, eventdata, handles)
% hObject    handle to mQuaLimparAxes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes4 > Limpar (Limpa o Axes4)

cla;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mCinDesativar_Callback(hObject, eventdata, handles)
% hObject    handle to mCinDesativar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes5 > Desativar (Desativa o Axes5)

cla;
set(handles.axes5, 'Visible', 'Off');

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mCinLimpar_Callback(hObject, eventdata, handles)
% hObject    handle to mCinLimpar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes5 > Limpar (Limpa o Axes5)

cla;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mCinOnGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mCinOnGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes5 > On Grid (Ativa a Grelha no Axes5)

grid on;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mCinOffGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mCinOffGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Menu > menuAxes5 > On Grid (Desativa a Grelha no Axes5)

grid off;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mSeiDesativar_Callback(hObject, eventdata, handles)
% hObject    handle to mSeiDesativar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes6 > Desativar (Desativa o Axes6)

cla;
set(handles.axes6, 'Visible', 'Off');

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mSeiLimpar_Callback(hObject, eventdata, handles)
% hObject    handle to mSeiLimpar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes6 > Limpar (Limpa o Axes6)

cla;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mSeiOnGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mSeiOnGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes6 > On Grid (Ativa a Grelha no Axes6)

grid on;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function mSeiOffGrid_Callback(hObject, eventdata, handles)
% hObject    handle to mSeiOffGrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu > menuAxes6 > On Grid (Desativa a Grelha no Axes6)

grid off;

% Update handles structure
guidata(hObject,handles);
end

% --------------------------------------------------------------------
function menuAxes6_Callback(hObject, eventdata, handles)
% hObject    handle to menuAxes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu menuAxes6

end

% --- Executes on slider movement.
function sliderIntensidade_Callback(hObject, eventdata, handles)
% hObject    handle to sliderIntensidade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

%painelIntensidade > sliderIntensidade (Põe a imagem com intensidade)

handles.imagemAnterior=handles.imagemAtual;

valorSlider=get(handles.sliderIntensidade,'Value');
assignin('base','valorSlider', valorSlider);

handles.imagemLumi=handles.imagemAtual*valorSlider;
imshow(handles.imagemLumi, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function sliderIntensidade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderIntensidade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
end

% --- Executes on button press in btnFecharIntensidade.
function btnFecharIntensidade_Callback(hObject, eventdata, handles)
% hObject    handle to btnFecharIntensidade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelIntensidade (Fecha o painelIntensidade)

set(handles.painelIntensidade, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on selection change in popupMenuFiltros.
function popupMenuFiltros_Callback(hObject, eventdata, handles)
% hObject    handle to popupMenuFiltros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupMenuFiltros contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupMenuFiltros

%popupMenuFiltros
%(Filtra a imagem, tanto em RGB como em Grayscale)

handles.valor = get(hObject,'Value');
switch handles.valor
    case 1
        % Update handles structure
        guidata(hObject, handles);
    case 2
        handles.imagemAnterior=handles.imagemAtual;
        
        handles.imagemAtual=filtroMedia3x3(handles.imagemAtual);
        imshow(handles.imagemAtual, 'Parent', handles.axes1);
        
        handles.imagemPosterior=handles.imagemAtual;

        % Update handles structure
        guidata(hObject, handles);
    case 3
        handles.imagemAnterior=handles.imagemAtual;
        
        handles.imagemAtual=filtroMediana3x3(handles.imagemAtual);
        imshow(handles.imagemAtual, 'Parent', handles.axes1);
        
        handles.imagemPosterior=handles.imagemAtual;

        % Update handles structure
        guidata(hObject, handles);
    case 4
        handles.imagemAnterior=handles.imagemAtual;
        
        handles.imagemAtual=filtroModa3x3(handles.imagemAtual);
        imshow(handles.imagemAtual, 'Parent', handles.axes1);
        
        handles.imagemPosterior=handles.imagemAtual;

        % Update handles structure
        guidata(hObject, handles);
    case 5
        set(handles.popupMenuFiltros, 'Visible', 'Off');
        % Update handles structure
        guidata(hObject, handles);
end
end

% --- Executes during object creation, after setting all properties.
function popupMenuFiltros_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupMenuFiltros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in btnPixeisGrayFechar.
function btnPixeisGrayFechar_Callback(hObject, eventdata, handles)
% hObject    handle to btnPixeisGrayFechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelPixeisGray (Fecha o painelPixeisGray)

set(handles.painelPixeisGray, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end

function editarPixeisGrayValor_Callback(hObject, eventdata, handles)
% hObject    handle to editarPixeisGrayValor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarPixeisGrayValor as text
%        str2double(get(hObject,'String')) returns contents of editarPixeisGrayValor as a double

%painelPixeisRgb > editarPixeisGrayValor

end

% --- Executes during object creation, after setting all properties.
function editarPixeisGrayValor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarPixeisGrayValor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in btnPixeisGrayCalcular.
function btnPixeisGrayCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to btnPixeisGrayCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelPixeisGray > btnPixeisGrayCalcular
%(Calcular os pixeis de uma imagem em Grayscale)

handles.valor=get(handles.editarPixeisGrayValor, 'String');
handles.valor=str2num(handles.valor);
handles.imagemAtual=contagemPixeis(handles.imagemAtual, handles.valor);
set(handles.textPixeisGrayResultado, 'String', handles.imagemAtual);

set(handles.editarPixeisGrayValor,'String','');
set(handles.textPixeisGrayResultado,'String','');

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnPixeisRgbFechar.
function btnPixeisRgbFechar_Callback(hObject, eventdata, handles)
% hObject    handle to btnPixeisRgbFechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelPixeisRgb (Fecha o painelPixeisRgb)

set(handles.painelPixeisRgb, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end

function editarPixeisRgbVerm_Callback(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbVerm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarPixeisRgbVerm as text
%        str2double(get(hObject,'String')) returns contents of editarPixeisRgbVerm as a double

%painelPixeisRgb > editarPixeisRgbVerm

end

% --- Executes during object creation, after setting all properties.
function editarPixeisRgbVerm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbVerm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function editarPixeisRgbVerd_Callback(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbVerd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarPixeisRgbVerd as text
%        str2double(get(hObject,'String')) returns contents of editarPixeisRgbVerd as a double

%painelPixeisRgb > editarPixeisRgbVerd

end

% --- Executes during object creation, after setting all properties.
function editarPixeisRgbVerd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbVerd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in btnPixeisRgbCalcular.
function btnPixeisRgbCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to btnPixeisRgbCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelPixeisRgb > btnPixeisRgbCalcular
%(Calcular os pixeis de uma imagem em RGB)

handles.vermelho=get(handles.editarPixeisRgbVerm, 'String');
handles.vermelho=str2num(handles.vermelho);
handles.verde=get(handles.editarPixeisRgbVerd, 'String');
handles.verde=str2num(handles.verde);
handles.azul=get(handles.editarPixeisRgbA, 'String');
handles.azul=str2num(handles.azul);
handles.valorCor=handles.vermelho+handles.verde+handles.azul;
handles.imagemAtual=contagemPixeis(handles.imagemAtual, handles.valorCor);
set(handles.textPixeisRgbResultado, 'String', handles.imagemAtual);

set(handles.editarPixeisRgbVerm,'String','');
set(handles.editarPixeisRgbVerd,'String','');
set(handles.editarPixeisRgbA,'String','');
set(handles.textPixeisRgbResultado,'String','');

% Update handles structure
guidata(hObject, handles);
end

function editarPixeisRgbA_Callback(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarPixeisRgbA as text
%        str2double(get(hObject,'String')) returns contents of editarPixeisRgbA as a double

%painelPixeisRgb > editarPixeisRgbA

end

% --- Executes during object creation, after setting all properties.
function editarPixeisRgbA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarPixeisRgbA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function editarRotacaoEscala_Callback(hObject, eventdata, handles)
% hObject    handle to editarRotacaoEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarRotacaoEscala as text
%        str2double(get(hObject,'String')) returns contents of editarRotacaoEscala as a double

%painelRotacao > editarRotacaoEscala

end

% --- Executes during object creation, after setting all properties.
function editarRotacaoEscala_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarRotacaoEscala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in btnRotacaoOk.
function btnRotacaoOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnRotacaoOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelRotacao > btnRotacaoOk
%(Roda a imagem para a esquerda ou para a direita, tanto em RGB como em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.valor=0;
handles.valor=get(handles.editarRotacaoEscala, 'String');
handles.valor=str2num(handles.valor);
handles.imagemAtual=imrotate(handles.imagemAtual, handles.valor, 'nearest');
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

set(handles.editarRotacaoEscala,'String','');

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnRotacaoFechar.
function btnRotacaoFechar_Callback(hObject, eventdata, handles)
% hObject    handle to btnRotacaoFechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelRotacao (Fecha o painelRotacao)

set(handles.painelRotacao, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end

function editarEscalaAltura_Callback(hObject, eventdata, handles)
% hObject    handle to editarEscalaAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarEscalaAltura as text
%        str2double(get(hObject,'String')) returns contents of editarEscalaAltura as a double

%painelEscala > editarEscalaAltura

end

% --- Executes during object creation, after setting all properties.
function editarEscalaAltura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarEscalaAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function editarEscalaLargura_Callback(hObject, eventdata, handles)
% hObject    handle to editarEscalaAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editarEscalaAltura as text
%        str2double(get(hObject,'String')) returns contents of editarEscalaAltura as a double

%painelEscala > editarEscalaLargura

end

% --- Executes during object creation, after setting all properties.
function editarEscalaLargura_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editarEscalaAltura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in btnEscalaOk.
function btnEscalaOk_Callback(hObject, eventdata, handles)
% hObject    handle to btnEscalaOk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelEscala > btnEscalaOk
%(Escala a imagem, tanto em RGB como em Grayscale)

handles.imagemAnterior=handles.imagemAtual;

handles.largura=str2double(get(handles.editarEscalaLargura,'String')); 
handles.altura=str2double(get(handles.editarEscalaAltura,'String'));
handles.largura=handles.largura/100;
handles.altura=handles.altura/100;
    handles.rgb=getimage(handles.axes2); 
handles.xform = [handles.largura 0 0
         0 handles.altura 0
         0 0 1 ]; 
handles.tform_translate = maketform('affine',handles.xform); 
handles.imagemAtual = imtransform(handles.rgb, handles.tform_translate, 'XData', [1 (size(handles.rgb,2)+handles.xform(3,1))], 'YData', [1 (size(handles.rgb,1)+handles.xform(3,2))]);
imshow(handles.imagemAtual, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

set(handles.editarEscalaLargura,'String','');
set(handles.editarEscalaAltura,'String','');

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnEscalaFechar.
function btnEscalaFechar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEscalaFechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%painelEscala (Fecha o painelEscala)

set(handles.painelEscala, 'Visible', 'Off');

% Update handles structure
guidata(hObject, handles);
end


% --------------------------------------------------------------------
function iSCSobel_Callback(hObject, eventdata, handles)
% hObject    handle to iSCSobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Sobel
%(Segmenta a imagem em cortornos sobel, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'sobel');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'sobel');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iSCPrewitt_Callback(hObject, eventdata, handles)
% hObject    handle to iSCPrewitt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Prewitt
%(Segmenta a imagem em cortornos prewitt, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'prewitt');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'prewitt');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iSCRoberts_Callback(hObject, eventdata, handles)
% hObject    handle to iSCRoberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Roberts
%(Segmenta a imagem em cortornos roberts, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'roberts');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'roberts');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iSCLaplacianGaussian_Callback(hObject, eventdata, handles)
% hObject    handle to iSCLaplacianGaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Laplacian of Gaussian
%(Segmenta a imagem em cortornos laplacian of gaussian, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'log');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'log');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iSCZeroCross_Callback(hObject, eventdata, handles)
% hObject    handle to iSCZeroCross (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Zero-Cross
%(Segmenta a imagem em cortornos zero-cross, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'zerocross');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'zerocross');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end

% --------------------------------------------------------------------
function iSCCanny_Callback(hObject, eventdata, handles)
% hObject    handle to iSCCanny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Menu Imagem > Segmentação > Contornos > Canny
%(Segmenta a imagem em cortornos canny, tanto em RGB como em Grayscale)

if (size (handles.imagemAtual,3)==3)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemGrayscale=rgb2gray(handles.imagemAtual);
    handles.imagemLimite=edge(handles.imagemGrayscale,'canny');
    handles.imagemUint8 = uint8(handles.imagemLimite*255);
    handles.imagemCat = cat(3, handles.imagemUint8, handles.imagemUint8, handles.imagemUint8);
    handles.imagemAtual = imlincomb(0.5, handles.imagemAtual, 1, handles.imagemCat);
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
elseif (size (handles.imagemAtual,3)==1)
    
    handles.imagemAnterior=handles.imagemAtual;
    
    handles.imagemLimite = edge(handles.imagemAtual,'canny');
    handles.imagemLimiteDouble = im2double(handles.imagemLimite);
    handles.imagemGrayscaleDouble = im2double(handles.imagemAtual);
    handles.imagemAtual=zeros(size(handles.imagemAtual));
    handles.imagemEscura=handles.imagemGrayscaleDouble/2.5;
    handles.imagemAtual(:,:,1) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,2) = handles.imagemEscura+handles.imagemLimiteDouble;
    handles.imagemAtual(:,:,3) = handles.imagemEscura+handles.imagemLimiteDouble;
    imshow(handles.imagemAtual, 'Parent', handles.axes1);
    
    handles.imagemPosterior=handles.imagemAtual;

    % Update handles structure
    guidata(hObject, handles);
end
end


% --- Executes on button press in btnTranslacaoC.
function btnTranslacaoC_Callback(hObject, eventdata, handles)
% hObject    handle to btnTranslacaoC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%btnTranslacaoC (Move a imagem para cima)

handles.imagemAnterior=handles.imagemAtual;

handles.translacaoX=handles.translacaoX-5;
handles.se = translate(strel(1),[handles.translacaoX handles.translacaoY]);
handles.late = imdilate(handles.imagemAtual, handles.se);
imshow(handles.late, 'Parent', handles.axes1);

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnTranslacaoD.
function btnTranslacaoD_Callback(hObject, eventdata, handles)
% hObject    handle to btnTranslacaoD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%btnTranslacaoD (Move a imagem para à direita)

handles.imagemAnterior=handles.imagemAtual;

handles.translacaoY=handles.translacaoY+5;
handles.se = translate(strel(1),[handles.translacaoX handles.translacaoY]);
handles.late = imdilate(handles.imagemAtual, handles.se);
imshow(handles.late, 'Parent', handles.axes1);

handles.late=handles.imagemAtual;

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnTranslacaoB.
function btnTranslacaoB_Callback(hObject, eventdata, handles)
% hObject    handle to btnTranslacaoB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%btnTranslacaoB (Move a imagem para baixo)

handles.imagemAnterior=handles.imagemAtual;

handles.translacaoX=handles.translacaoX+5;
handles.se = translate(strel(1),[handles.translacaoX handles.translacaoY]);
handles.late = imdilate(handles.imagemAtual, handles.se);
imshow(handles.late, 'Parent', handles.axes1); 

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

% --- Executes on button press in btnTranslacaoE.
function btnTranslacaoE_Callback(hObject, eventdata, handles)
% hObject    handle to btnTranslacaoE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%btnTranslacaoE (Move a imagem para à esquerda)

handles.imagemAnterior=handles.imagemAtual;

handles.translacaoY=handles.translacaoY-5;
handles.se = translate(strel(1),[handles.translacaoX handles.translacaoY]);
handles.late = imdilate(handles.imagemAtual, handles.se);
imshow(handles.late, 'Parent', handles.axes1); 

handles.imagemPosterior=handles.imagemAtual;

% Update handles structure
guidata(hObject, handles);
end

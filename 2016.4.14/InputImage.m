function varargout = InputImage(varargin)
% INPUTIMAGE MATLAB code for InputImage.fig
%      INPUTIMAGE, by itself, creates a new INPUTIMAGE or raises the existing
%      singleton*.
%
%      H = INPUTIMAGE returns the handle to a new INPUTIMAGE or the handle to
%      the existing singleton*.
%
%      INPUTIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUTIMAGE.M with the given input arguments.
%
%      INPUTIMAGE('Property','Value',...) creates a new INPUTIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InputImage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InputImage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InputImage

% Last Modified by GUIDE v2.5 20-Jan-2016 15:38:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InputImage_OpeningFcn, ...
                   'gui_OutputFcn',  @InputImage_OutputFcn, ...
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

% --- Executes just before InputImage is made visible.
function InputImage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InputImage (see VARARGIN)

% Choose default command line output for InputImage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(gcf,'center');
% This sets up the initial plot - only do when we are invisible
% so window can get raised using InputImage.
if strcmp(get(hObject,'Visible'),'off')
    bicParameter = getappdata(0,'bicParameter');
    M=bicParameter.QP*bicParameter.travelTimes*0.09*2.44;
    N=0.81*exp(-((bicParameter.T-22.2)/11.4)^2);
    C=(-0.0003*bicParameter.A^2+0.0145*bicParameter.A+0.179)*(-0.016*bicParameter.I+0.42);
    Q2=M*exp(-0.85*bicParameter.pinter)*N*C;
    plot(handles.axes1,bicParameter.pinter,Q2);
    xlabel(handles.axes1,'票价','Rotation',0,'fontsize',10);
    ylabel(handles.axes1,'用户量','Rotation',90,'fontsize',10);
end

% UIWAIT makes InputImage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InputImage_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(InputImage,handles);
axes(handles.axes1);
cla;
%获取页面穿参，并计算中间值
try   
    inputcost = getappdata(0,'inputcost');   
catch   
    errordlg('未输入自定义成本','警告') ;    
end
bicParameter = getappdata(0,'bicParameter');
M=bicParameter.QP*bicParameter.travelTimes*0.09*2.44;
N=0.81*exp(-((bicParameter.T-22.2)/11.4)^2);
C=(-0.0003*bicParameter.A^2+0.0145*bicParameter.A+0.179)*(-0.016*bicParameter.I+0.42);
%获取下拉列表的值
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
       Q2=M*exp(-0.85*bicParameter.pinter)*N*C;
       plot(handles.axes1,bicParameter.pinter,Q2);
       xlabel(handles.axes1,'票价','Rotation',0,'fontsize',10);
       ylabel(handles.axes1,'用户量','Rotation',90,'fontsize',10);
    case 2
        try   
            costing = inputcost*ones(1,6);
            inputcost = 0:5;
           earning = (M*exp(-0.85*bicParameter.pinter).*N*C).*bicParameter.pinter+bicParameter.AQ+bicParameter.S;
           plot(handles.axes1,bicParameter.pinter,earning,'-b',inputcost,costing,'--r');
           xlabel(handles.axes1,'平均票价','Rotation',0,'fontsize',10);
           ylabel(handles.axes1,'支出/收入','Rotation',90,'fontsize',10);
        catch   
            errordlg('未输入自定义成本','警告') ;    
        end
    case 3
       %收益与平均票价的图像
       funImage=((M*exp(-0.85*bicParameter.pinter)).*N*C).*bicParameter.pinter+bicParameter.AQ+bicParameter.S-inputcost; 
       plot(handles.axes1,bicParameter.pinter,funImage);
       xlabel(handles.axes1,'平均票价','Rotation',0,'fontsize',10);
       ylabel(handles.axes1,'收益','Rotation',90,'fontsize',10);
end


% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

%set(hObject, 'String', {'plot(rand(5))', 'plot(sin(1:0.01:25))', 'bar(1:.5:10)', 'plot(membrane)', 'surf(peaks)'});

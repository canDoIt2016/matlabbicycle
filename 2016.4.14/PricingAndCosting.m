function varargout = PricingAndCosting(varargin)
% PRICINGANDCOSTING MATLAB code for PricingAndCosting.fig
%      PRICINGANDCOSTING, by itself, creates a new PRICINGANDCOSTING or raises the existing
%      singleton*.
%
%      H = PRICINGANDCOSTING returns the handle to a new PRICINGANDCOSTING or the handle to
%      the existing singleton*.
%
%      PRICINGANDCOSTING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRICINGANDCOSTING.M with the given input arguments.
%
%      PRICINGANDCOSTING('Property','Value',...) creates a new PRICINGANDCOSTING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PricingAndCosting_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PricingAndCosting_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PricingAndCosting

% Last Modified by GUIDE v2.5 20-Jan-2016 21:44:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PricingAndCosting_OpeningFcn, ...
                   'gui_OutputFcn',  @PricingAndCosting_OutputFcn, ...
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

%%%%%%����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�����ǰƱ���µ��û���
%%%%%%����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP���������˿���
%T���������¶ȣ��棩
%A����ĳ����ƽ������
%I����ĳ����ƽ�����루ǧԪ/�£�
%p�����������г�һ�γ��е�ƽ��Ʊ�ۣ�Ԫ��
%%%%%%���%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Q�����û���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Q = priceMax(QP,T,A,I,p,travelTimes)
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
Q=M*exp(-0.85*p)*N*C;
Q=round(Q);

%%%%%%����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pΪ����������۵����ֵ���������
%pΪ��һֵ����˵�һֵ�µ�����
%%%%%%����%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP���������˿���
%T���������¶ȣ��棩
%A����ĳ����ƽ������
%I����ĳ����ƽ�����루ǧԪ/�£�
%AQ����������뺯��(�����ǳ���)
%S���������������
%qin�����������г�Ͷ����
%Y�����������
%p����һ�γ���ƽ��Ʊ��
%%%%%%���%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pMax�����������ĵ��ۻ�������
%PRMax�����������ֵ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [pMax,PRMax]= paymentsMax(QP,T,A,I,AQ,S,p,inputcost,travelTimes)
%syms x; 
x = 0:0.1:50;
M = QP*travelTimes*0.09*2.44;
N = 0.81*exp(-((T-22.2)/11.4)^2);
C = (-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
mid = AQ+S;
row = size(p,2);
if(row>1)
    funDiff = ((M*exp(-0.85*x)).*N.*C).*x+mid-inputcost;
    resultDiff = diff(funDiff);
    pMax = find(resultDiff>0);
    pMax = max(pMax);
    pMax = pMax*0.1;
    PRMax = ((M*exp(-0.85*pMax)).*N.*C).*pMax+mid-inputcost;
    PRMax = round(PRMax);
else
    %��ҵ������
    PRMax = ((M*exp(-0.85*p)).*N.*C).*p+mid-inputcost; 
    PRMax = round(PRMax);
    pMax = 0;
end

% --- Executes just before PricingAndCosting is made visible.
function PricingAndCosting_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PricingAndCosting (see VARARGIN)

% Choose default command line output for PricingAndCosting
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PricingAndCosting wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui(gcf,'center');

% --- Outputs from this function are returned to the command line.
function varargout = PricingAndCosting_OutputFcn(hObject, eventdata, handles) 
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit1,'String'))||isempty(get(handles.edit2,'String'))
   errordlg('�����������Ĳ�����','����') ;    
else
   %��ȡ�ı�������ݲ�����ת����������ʽ
   ticketPrice = str2double(get(handles.edit1,'String'));
   projectCost = str2double(get(handles.edit2,'String'));
   bicParameter = getappdata(0,'bicParameter');
   %paymentsBalance������ҵ��������
   [pMax1,PRMax1] = paymentsMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,bicParameter.AQ,bicParameter.S,ticketPrice,projectCost,bicParameter.travelTimes);
   PRMax1 = num2str(PRMax1);
   %priceMax�����û���
   Q = priceMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,ticketPrice,bicParameter.travelTimes);
   Q = num2str(Q);
   close(gcf);
   %pricing�������
   forecast;
   handles=guihandles(forecast);
   set(handles.edit1,'String',Q);
   set(handles.edit2,'String',PRMax1);
end

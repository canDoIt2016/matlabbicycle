
function varargout = priceMaxWin(varargin)
% PRICEMAXWIN MATLAB code for priceMaxWin.fig
%      PRICEMAXWIN, by itself, creates a new PRICEMAXWIN or raises the existing
%      singleton*.
%
%      H = PRICEMAXWIN returns the handle to a new PRICEMAXWIN or the handle to
%      the existing singleton*.
%
%      PRICEMAXWIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRICEMAXWIN.M with the given input arguments.
%
%      PRICEMAXWIN('Property','Value',...) creates a new PRICEMAXWIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before priceMaxWin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to priceMaxWin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help priceMaxWin

% Last Modified by GUIDE v2.5 21-Jan-2016 20:19:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @priceMaxWin_OpeningFcn, ...
                   'gui_OutputFcn',  @priceMaxWin_OutputFcn, ...
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



% --- Executes just before priceMaxWin is made visible.
function priceMaxWin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to priceMaxWin (see VARARGIN)

% Choose default command line output for priceMaxWin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes priceMaxWin wait for user response (see UIRESUME)
% uiwait(handles.figure1);

movegui(gcf,'center');
ha=axes('units','normalized','position',[0 0 1 1]);
uistack(ha,'down')
II=imread('./img/backgroup.jpg');
image(II)
colormap gray
set(ha,'handlevisibility','off','visible','off');

% --- Outputs from this function are returned to the command line.
function varargout = priceMaxWin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%s



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
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



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%%%%功能%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%p为区间输出单价的最大值和最大收益
%p为单一值输出此单一值下的收益
%%%%%%输入%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP——区域人口数
%T——室外温度（℃）
%A——某区域平均年龄
%I——某区域平均收入（千元/月）
%AQ——广告收入函数(这里是常数)
%S——政府补贴额度
%qin——公共自行车投放量
%Y——计算年份
%p——一次出行平均票价
%%%%%%输出%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pMax——最大收益的单价或日收益
%PRMax——收益最大值
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [pMax,PRMax]= paymentsMax(QP,T,A,I,AQ,S,qin,Y,p,costIncrease,breakratio,repairCost,operatCost,travelTimes)
%syms x; 
x=0:0.1:50;
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
subY=Y-2015;
powerY=power((1+costIncrease),subY);
mid=(operatCost/365)*qin*powerY-AQ-S;
%p=0:0.001:50;
row=size(p,2);
if(row>1)
    funDiff=((M*exp(-0.85*x)).*N.*C).*(x-(breakratio/365)*repairCost)-mid;
    resultDiff=diff(funDiff);
    pMax=find(resultDiff>0);
    pMax=max(pMax);
    pMax=pMax*0.1;
    PRMax=((M*exp(-0.85*pMax)).*N.*C).*(pMax-(breakratio/365)*repairCost)-mid;
    PRMax=round(PRMax);
else
    %企业日收益
    PRMax=((M*exp(-0.85*p)).*N.*C).*(p-(breakratio/365)*repairCost)-mid; 
    PRMax=round(PRMax);
    pMax = 0;
end

%%%%%%功能%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%输出当前票价下的用户量
%%%%%%输入%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP——区域人口数
%T——室外温度（℃）
%A——某区域平均年龄
%I——某区域平均收入（千元/月）
%p——公共自行车一次出行的平均票价（元）
%%%%%%输出%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Q——用户量
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Q = priceMax(QP,T,A,I,p,travelTimes)
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
Q=M*exp(-0.85*p)*N*C;
Q=round(Q);

%%%%%%功能%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%收支平衡的计算
%%%%%%输入%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP——区域人口数
%T——室外温度（℃）
%A——某区域平均年龄
%I——某区域平均收入（千元/月）
%AQ——广告收入函数(这里是常数)
%S——政府补贴额度
%qin——公共自行车投放量
%Y——计算年份
%p——一次出行平均票价
%%%%%%输出%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%balance2sring1——收支平衡下的票价1
%balance2sring2——收支平衡下的票价2
%Q3——票价1下的用户量
%Q4——票价2下的用户量
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [balance2sring1,balance2sring2,Q3,Q4]= paymentsBalance(QP,T,A,I,AQ,S,qin,Y,pinter,costIncrease,breakratio,repairCost,operatCost,travelTimes)
%公式中的中间参数
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
subY=Y-2015;
powerY=power((1+costIncrease),subY);
mid=(operatCost/365)*qin*powerY-AQ-S;
%收支平衡计算
fun = @(pinter)(((M*exp(-0.85*pinter)).*N*C).*(pinter-(breakratio/365)*repairCost)-mid);
balance2 = fsolve(fun,[0.1,2]);
balance2sring1 = num2str(balance2(1,1));
balance2sring2 = num2str(balance2(1,2));
Q3 = priceMax(QP,T,A,I,balance2(1,1),travelTimes);
Q3 = num2str(Q3);
Q4 = priceMax(QP,T,A,I,balance2(1,2),travelTimes);
Q4 = num2str(Q4);

%%%%%%功能%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%运营成本计算
%%%%%%输入%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%QP——区域人口数
%T——室外温度（℃）
%A——某区域平均年龄
%I——某区域平均收入（千元/月）
%p——公共自行车一次出行的平均票价（元）
%%%%%%输出%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%costing——成本
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function costing = mCosting(QP,T,A,I,AQ,S,qin,Y,p,costIncrease,breakratio,repairCost,operatCost,travelTimes)
%公式中的中间参数
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
subY=Y-2015;
powerY=power((1+costIncrease),subY);
mid=(operatCost/365)*qin*powerY-AQ-S;
%成本的计算
costing = round(((M*exp(-0.85*p))*N*C)*(breakratio/365)*repairCost+mid);

function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.edit1,'string','');
set(handles.edit10,'string','');
set(handles.edit11,'string','');
set(handles.edit12,'string','');
set(handles.edit2,'string','');

% --- Executes on button press in pushbutton4.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%清除edit内容
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.edit13,'string','');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit8,'string','');


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_19_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit8,'string','');
% --------------------------------------------------------------------
function Untitled_12_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_27_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit3,'string','');
set(handles.edit4,'string','');

% --------------------------------------------------------------------
function Untitled_28_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit8,'string','');


% --------------------------------------------------------------------


% hObject    handle to Untitled_20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_22_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_23_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %将bicParameter设置为全局变量
    setappdata(0,'bicParameter',bicParameter);
    %显示input_image页面
    InputImage;
end

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取文本框的内容并将其转换成数字形式
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme12 = allSchemeListItems.item(12);
    Scheme13 = allSchemeListItems.item(13);
    Scheme10 = allSchemeListItems.item(10);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlBreakratio = char(Scheme12.getAttribute('default'));
    xmlRepairCost = char(Scheme13.getAttribute('default'));
    xmlOperatCost = char(Scheme10.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.breakratio = str2double(xmlBreakratio);
    bicParameter.repairCost = str2double(xmlRepairCost);
    bicParameter.operatCost = str2double(xmlOperatCost);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %paymentsBalance计算最大收益的单价、收益最大值和最大收益票价下的用户量
    [pMax2, PRMax2] = paymentsMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,bicParameter.AQ,bicParameter.S,bicParameter.qin,bicParameter.Y,bicParameter.pinter,bicParameter.costIncrease,bicParameter.breakratio,bicParameter.repairCost,bicParameter.operatCost,bicParameter.travelTimes);
    pMax3 = num2str(pMax2);
    PRMax3 = num2str(PRMax2);
    Q4 = priceMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,pMax2,bicParameter.travelTimes);
    Q5 = num2str(Q4);

    %计算收支平衡的票价及用户量，pMax2大于零则直接输出，小于零则显示无法解出
    if(PRMax2>0)
        [balance2sring1,balance2sring2,Q3,Q4] = paymentsBalance(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,bicParameter.AQ,bicParameter.S,bicParameter.qin,bicParameter.Y,bicParameter.pinter,bicParameter.costIncrease,bicParameter.breakratio,bicParameter.repairCost,bicParameter.operatCost,bicParameter.travelTimes);
        pricing;
        handles=guihandles(pricing);
        set(handles.text1,'String',balance2sring1);
        set(handles.text2,'String',balance2sring2);
        set(handles.text3,'String',Q3);
        set(handles.text4,'String',Q4);
        set(handles.text5,'String',PRMax3);
        set(handles.text6,'String',pMax3);
        set(handles.text7,'String',Q5);
    else 
        balance2sring1 = '无平衡值';
        balance2sring2 = '无平衡值';
        Q3 = '无平衡值';
        Q4 = '无平衡值';
        pricing;
        handles=guihandles(pricing);
        set(handles.text1,'String',balance2sring1);
        set(handles.text2,'String',balance2sring2);
        set(handles.text3,'String',Q3);
        set(handles.text4,'String',Q4);
        set(handles.text5,'String',PRMax3);
        set(handles.text6,'String',pMax3);
        set(handles.text7,'String',Q5);
        errordlg('输入所得全为负收益','警告') ; 
    end
end
% --------------------------------------------------------------------

function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme12 = allSchemeListItems.item(12);
    Scheme13 = allSchemeListItems.item(13);
    Scheme10 = allSchemeListItems.item(10);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlBreakratio = char(Scheme12.getAttribute('default'));
    xmlRepairCost = char(Scheme13.getAttribute('default'));
    xmlOperatCost = char(Scheme10.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    QP = str2double(get(handles.edit5,'String'));
    T = str2double(xmlT);
    A = str2double(get(handles.edit6,'String'));
    I = str2double(get(handles.edit7,'String'));
    AQ = str2double(get(handles.edit3,'String'));
    S = str2double(get(handles.edit4,'String'));
    qin = str2double(get(handles.edit8,'String'));
    Y = year(datestr(now,26));
    costIncrease = str2double(xmlCostIncrease);
    breakratio = str2double(xmlBreakratio);
    repairCost = str2double(xmlRepairCost);
    operatCost = str2double(xmlOperatCost);
    travelTimes = str2double(xmlTravelTimes);
    %计算平衡值
    pinter = 0:0.1:5;
    [balance2sring1,balance2sring2,Q3,Q4] = paymentsBalance(QP,T,A,I,AQ,S,qin,Y,pinter,costIncrease,breakratio,repairCost,operatCost,travelTimes);
    balance2sring1 = str2double(balance2sring1);
    balance2sring2 = str2double(balance2sring2);
    %计算平衡值下的成本
    costing1 = mCosting(QP,T,A,I,AQ,S,qin,Y,balance2sring1,costIncrease,breakratio,repairCost,operatCost,travelTimes);
    costing2 = mCosting(QP,T,A,I,AQ,S,qin,Y,balance2sring2,costIncrease,breakratio,repairCost,operatCost,travelTimes);
    costing1 = num2str(costing1);
    costing2 = num2str(costing2);
    %mcost界面输出
    mcost;
    handles=guihandles(mcost);
    set(handles.text1,'String',costing2);
    set(handles.text2,'String',costing1);
end

% --------------------------------------------------------------------
function Untitled_13_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme12 = allSchemeListItems.item(12);
    Scheme13 = allSchemeListItems.item(13);
    Scheme10 = allSchemeListItems.item(10);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlBreakratio = char(Scheme12.getAttribute('default'));
    xmlRepairCost = char(Scheme13.getAttribute('default'));
    xmlOperatCost = char(Scheme10.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.breakratio = str2double(xmlBreakratio);
    bicParameter.repairCost = str2double(xmlRepairCost);
    bicParameter.operatCost = str2double(xmlOperatCost);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %将bicParameter设置为全局变量
    setappdata(0,'bicParameter',bicParameter);
    %显示modelimage页面
    ModelImage;
end
% --------------------------------------------------------------------
function Untitled_14_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_17_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_24_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_25_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_26_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_29_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ConfigTable;

% --------------------------------------------------------------------
function Untitled_30_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme10 = allSchemeListItems.item(10);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlOperatCost = char(Scheme10.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.operatCost = str2double(xmlOperatCost);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %将bicParameter设置为全局变量
    setappdata(0,'bicParameter',bicParameter);
    %显示inputcost页面
    inputcost;
end
% --------------------------------------------------------------------
function Untitled_31_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
    %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme12 = allSchemeListItems.item(12);
    Scheme13 = allSchemeListItems.item(13);
    Scheme10 = allSchemeListItems.item(10);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlBreakratio = char(Scheme12.getAttribute('default'));
    xmlRepairCost = char(Scheme13.getAttribute('default'));
    xmlOperatCost = char(Scheme10.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.breakratio = str2double(xmlBreakratio);
    bicParameter.repairCost = str2double(xmlRepairCost);
    bicParameter.operatCost = str2double(xmlOperatCost);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %将bicParameter设置为全局变量
    setappdata(0,'bicParameter',bicParameter);
    %显示TicketPrice页面
    TicketPrice;
end

% --------------------------------------------------------------------
function Untitled_32_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isempty(get(handles.edit5,'String'))||isempty(get(handles.edit6,'String'))||isempty(get(handles.edit7,'String'))||isempty(get(handles.edit3,'String'))||isempty(get(handles.edit4,'String'))||isempty(get(handles.edit8,'String'))
   errordlg('有未输入的参数','警告') ;    
else
   %读取配置文件文件
    try   
      xDoc = xmlread('.\config.xml');   
    catch   
        errordlg('无法打开配置文件','警告') ;    
    end   
    allSchemeListItems = xDoc.getElementsByTagName('Scheme');% 获取Items节点集合
    Scheme0 = allSchemeListItems.item(0);
    Scheme11 = allSchemeListItems.item(11);
    Scheme5 = allSchemeListItems.item(5);
    xmlT = char(Scheme0.getAttribute('default'));
    xmlCostIncrease = char(Scheme11.getAttribute('default'));
    xmlTravelTimes = char(Scheme5.getAttribute('default'));
    bicParameter.QP = str2double(get(handles.edit5,'String'));
    bicParameter.T = str2double(xmlT);
    bicParameter.A = str2double(get(handles.edit6,'String'));
    bicParameter.I = str2double(get(handles.edit7,'String'));
    bicParameter.AQ = str2double(get(handles.edit3,'String'));
    bicParameter.S = str2double(get(handles.edit4,'String'));
    bicParameter.qin = str2double(get(handles.edit8,'String'));
    bicParameter.Y = year(datestr(now,26));
    bicParameter.pinter = 0:0.1:5;
    bicParameter.costIncrease = str2double(xmlCostIncrease);
    bicParameter.travelTimes = str2double(xmlTravelTimes);
    %将bicParameter设置为全局变量
    setappdata(0,'bicParameter',bicParameter);
    %显示TicketPrice页面
    PricingAndCosting;
end

% --------------------------------------------------------------------
function Untitled_33_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipanel17_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

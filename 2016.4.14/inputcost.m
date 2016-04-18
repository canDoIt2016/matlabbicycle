function varargout = inputcost(varargin)
% INPUTCOST MATLAB code for inputcost.fig
%      INPUTCOST, by itself, creates a new INPUTCOST or raises the existing
%      singleton*.
%
%      H = INPUTCOST returns the handle to a new INPUTCOST or the handle to
%      the existing singleton*.
%
%      INPUTCOST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUTCOST.M with the given input arguments.
%
%      INPUTCOST('Property','Value',...) creates a new INPUTCOST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inputcost_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inputcost_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inputcost

% Last Modified by GUIDE v2.5 19-Jan-2016 15:41:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inputcost_OpeningFcn, ...
                   'gui_OutputFcn',  @inputcost_OutputFcn, ...
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
    %企业日收益
    PRMax = ((M*exp(-0.85*p)).*N.*C).*p+mid-inputcost; 
    PRMax = round(PRMax);
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
function [balance2sring1,balance2sring2,Q3,Q4]= paymentsBalance(QP,T,A,I,AQ,S,pinter,inputcost,travelTimes)
%公式中的中间参数
M=QP*travelTimes*0.09*2.44;
N=0.81*exp(-((T-22.2)/11.4)^2);
C=(-0.0003*A^2+0.0145*A+0.179)*(-0.016*I+0.42);
mid=AQ+S;
%收支平衡计算
fun = @(pinter)(((M*exp(-0.85*pinter)).*N*C).*pinter+mid-inputcost);
balance2 = fsolve(fun,[0.1,2]);
balance2(1,1)=roundn(balance2(1,1),-2);
balance2(1,2)=roundn(balance2(1,2),-2);
balance2sring1 = num2str(balance2(1,1));
balance2sring2 = num2str(balance2(1,2));
Q3 = priceMax(QP,T,A,I,balance2(1,1),travelTimes);
Q3 = num2str(Q3);
Q4 = priceMax(QP,T,A,I,balance2(1,2),travelTimes);
Q4 = num2str(Q4);

% --- Executes just before inputcost is made visible.
function inputcost_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inputcost (see VARARGIN)

% Choose default command line output for inputcost
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

movegui(gcf,'center');
% UIWAIT makes inputcost wait for user response (see UIRESUME)
% uiwait(handles.figure1);
if strcmp(get(hObject,'Visible'),'off')
%    set(handles.edit1,'String',costing2);
 end


% --- Outputs from this function are returned to the command line.
function varargout = inputcost_OutputFcn(hObject, eventdata, handles) 
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
bicParameter = getappdata(0,'bicParameter');
M=bicParameter.QP*bicParameter.travelTimes*0.09*2.44;
N=0.81*exp(-((bicParameter.T-22.2)/11.4)^2);
C=(-0.0003*bicParameter.A^2+0.0145*bicParameter.A+0.179)*(-0.016*bicParameter.I+0.42);
subY=bicParameter.Y-2015;
powerY=power((1+bicParameter.costIncrease),subY);
mid=(bicParameter.operatCost/365)*bicParameter.qin*powerY;

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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Upper_Limit_Custom Lower_Limit_Custom User_Upper_Limit_Custom User_Lower_Limit_Custom Maximum_Return_Custom Maximum_Ticket_Price_Custom Maximum_Ticket_Price_User_Custom Costing_Custom;
if isempty(get(handles.edit1,'String'))
   errordlg('未输入预计成本！','警告') ;    
else
   inputcost = str2double(get(handles.edit1,'String'));
   %将inputcost设置为全局变量
   setappdata(0,'inputcost',inputcost);
   bicParameter = getappdata(0,'bicParameter');
   %paymentsBalance计算最大收益的单价、收益最大值和最大收益票价下的用户量
   [pMax2, PRMax2] = paymentsMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,bicParameter.AQ,bicParameter.S,bicParameter.pinter,inputcost,bicParameter.travelTimes);
   pMax3 = num2str(pMax2);
   PRMax3 = num2str(PRMax2);
   Q4 = priceMax(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,pMax2,bicParameter.travelTimes);
   Q5 = num2str(Q4);
   %计算收支平衡的票价及用户量，pMax2大于零则直接输出，小于零则显示无法解出
    if(PRMax2>0)
        [balance2sring1,balance2sring2,Q3,Q4] = paymentsBalance(bicParameter.QP,bicParameter.T,bicParameter.A,bicParameter.I,bicParameter.AQ,bicParameter.S,bicParameter.pinter,inputcost,bicParameter.travelTimes);
        close(gcf);
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
        close(gcf);
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
    Costing_Custom=inputcost;
    Upper_Limit_Custom=balance2sring1;
    Lower_Limit_Custom=balance2sring2;
    User_Upper_Limit_Custom=Q3;
    User_Lower_Limit_Custom=Q4;
    Maximum_Return_Custom=PRMax3;
    Maximum_Ticket_Price_Custom=pMax3;
    Maximum_Ticket_Price_User_Custom=Q5;
end

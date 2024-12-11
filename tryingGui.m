function varargout = Gui(varargin)
% TRYINGGUI MATLAB code for tryingGui.fig
%      TRYINGGUI, by itself, creates a new TRYINGGUI or raises the existing
%      singleton*.
%
%      H = TRYINGGUI returns the handle to a new TRYINGGUI or the handle to
%      the existing singleton*.
%
%      TRYINGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRYINGGUI.M with the given input arguments.
%
%      TRYINGGUI('Property','Value',...) creates a new TRYINGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tryingGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tryingGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tryingGui

% Last Modified by GUIDE v2.5 11-Dec-2024 16:58:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tryingGui_OpeningFcn, ...
                   'gui_OutputFcn',  @tryingGui_OutputFcn, ...
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


% --- Executes just before tryingGui is made visible.
function tryingGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tryingGui (see VARARGIN)

% Choose default command line output for tryingGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tryingGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tryingGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function brightness_vl_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_vl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of brightness_vl as text
%        str2double(get(hObject,'String')) returns contents of brightness_vl as a double


% --- Executes on button press in add_brigt.
function add_brigt_Callback(hObject, eventdata, handles)
% hObject    handle to add_brigt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=imread('cameraman.tif');
val=str2double(get(handles.edit11,'string'));
op=get(handles.edit12,'string');
r=brightness(a,val,op);
axes(handles.axes4);
imshow(r);

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=imread('cameraman.tif');
val=str2double(get(handles.edit11,'string'));
op=get(handles.edit12,'string');
r=brightness(a,val,op);
axes(handles.axes4);
imshow(r);


% --- Executes on button press in Divide.
function Divide_Callback(hObject, eventdata, handles)
% hObject    handle to Divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=imread('cameraman.tif');
val=str2double(get(handles.edit11,'string'));
op=get(handles.edit12,'string');
r=brightness(a,val,op);
axes(handles.axes4);
imshow(r);


% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=imread('cameraman.tif');
val=str2double(get(handles.edit11,'string'));
op=get(handles.edit12,'string');
r=brightness(a,val,op);
axes(handles.axes4);
imshow(r);

% --- Executes during object creation, after setting all properties.
function brightness_vl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_vl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in Blck_white.
function Blck_white_Callback(hObject, eventdata, handles)
% hObject    handle to Blck_white (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=imread('trees.tif');
b=rgb2bw(c,50);
axes(handles.axes4);
imshow(b, 'Parent', handles.axes4); % Display the image

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   choice = questdlg('Are you sure you want to exit?', ...
                      'Exit Confirmation', ...
                      'Yes', 'No', 'Yes');
    if strcmp(choice, 'Yes')
        % Close the GUI
        close(handles.figure1); % Assuming 'figure1' is the tag of your main GUI figure
    end

% --- Executes on button press in import_img.
function import_img_Callback(hObject, eventdata, handles)
% hObject    handle to import_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=imread('cameraman.tif')
axes(handles.axes2);
imshow(a);

% --- Executes on button press in gray_img.
function gray_img_Callback(hObject, eventdata, handles)
% hObject    handle to gray_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b = graytobinary(a,90);
axes(handles.axes4);
imshow(b);

% --- Executes on button press in complement.
function complement_Callback(hObject, ~, handles)
% hObject    handle to complement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
c=Inverse(a);
axes(handles.axes4);
imshow(c);

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
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



function n_min_Callback(hObject, eventdata, handles)
% hObject    handle to n_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_min as text
%        str2double(get(hObject,'String')) returns contents of n_min as a double
global nmin_val
nmin_val = str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function n_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_max_Callback(hObject, eventdata, handles)
% hObject    handle to n_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_max as text
%        str2double(get(hObject,'String')) returns contents of n_max as a double
global nmax_val
nmax_val= str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function n_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Gmma_val_Callback(hObject, eventdata, handles)
% hObject    handle to Gmma_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gmma_val as text
%        str2double(get(hObject,'String')) returns contents of Gmma_val as a double
global gm_val
gm_val = str2double(get(hObject, 'String'));



% --- Executes during object creation, after setting all properties.
function Gmma_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gmma_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Histogram_Equalization.
function Histogram_Equalization_Callback(hObject, eventdata, handles)
% hObject    handle to Histogram_Equalization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=Equalization(a);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in strectching.
function strectching_Callback(hObject, eventdata, handles)
% hObject    handle to strectching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
global nmin_val
global nmax_val
c=Stretch(a,nmin_val,nmax_val);
axes(handles.axes4);
imshow(c);


% --- Executes on button press in Histogram.
function Histogram_Callback(hObject, eventdata, handles)
% hObject    handle to Histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=histogram(a)
axes(handles.axes4);
bar(b);


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=InvLog(a);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in Log.
function Log_Callback(hObject, eventdata, handles)
% hObject    handle to Log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=LogImage(a);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in gamma.
function gamma_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gm_val
global a
b=gammaCorrection(a,gm_val);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in Point.
function Point_Callback(hObject, eventdata, handles)
% hObject    handle to Point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=pointEdgeFilter(a);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in vertical_edg.
function vertical_edg_Callback(hObject, eventdata, handles)
% hObject    handle to vertical_edg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=verticalEdgeFilter(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in Horizontal_edg.
function Horizontal_edg_Callback(hObject, eventdata, handles)
% hObject    handle to Horizontal_edg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=horizontalEdgeFilter(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in left_dia_edg.
function left_dia_edg_Callback(hObject, eventdata, handles)
% hObject    handle to left_dia_edg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=leftDiagEdge(a)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in rigt_dia_edg.
function rigt_dia_edg_Callback(hObject, eventdata, handles)
% hObject    handle to rigt_dia_edg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=rightDiagEdge(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in point_sh.
function point_sh_Callback(hObject, eventdata, handles)
% hObject    handle to point_sh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=SharpeningFilter_V(a)
axes(handles.axes4);
imshow(b)

% --- Executes on button press in vertical_sh.
function vertical_sh_Callback(hObject, eventdata, handles)
% hObject    handle to vertical_sh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=SharpeningFilter(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in right_dia_sh.
function right_dia_sh_Callback(hObject, eventdata, handles)
% hObject    handle to right_dia_sh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=SharpeningFilter_RD(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in lft_dia_sh.
function lft_dia_sh_Callback(hObject, eventdata, handles)
% hObject    handle to lft_dia_sh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=SharpeningFilter_LD(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in Horiz_sh.
function Horiz_sh_Callback(hObject, eventdata, handles)
% hObject    handle to Horiz_sh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=SharpeningFilter_H(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in gau_hpf.
function gau_hpf_Callback(hObject, eventdata, handles)
% hObject    handle to gau_hpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=gaussian_hpf(a,20)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in ButterWorth_HPF.
function ButterWorth_HPF_Callback(hObject, eventdata, handles)
% hObject    handle to ButterWorth_HPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=butterworth_hpf(a,20,1)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in Ideal_hpf.
function Ideal_hpf_Callback(hObject, eventdata, handles)
% hObject    handle to Ideal_hpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=ideal_hpf(a,20)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in midpoint.
function midpoint_Callback(hObject, eventdata, handles)
% hObject    handle to midpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=midpoint_filter(a,3)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in avg.
function avg_Callback(hObject, eventdata, handles)
% hObject    handle to avg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=averageFilter_box(a)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=nonlinearFilter(a,'max',3*3)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=nonlinearFilter(a,'min',3*3)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
% hObject    handle to mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=nonlinearFilter(a,'mean',3*3)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=gaussian_lpf(a,20)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in gau_lpf.
function gau_lpf_Callback(hObject, eventdata, handles)
% hObject    handle to gau_lpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=nonlinearFilter(a,'median',3*3)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in butr_lpf.
function butr_lpf_Callback(hObject, eventdata, handles)
% hObject    handle to butr_lpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=butterworth_lpf(a,20,1)
axes(handles.axes4);
imshow(b);

% --- Executes on button press in ideal_lpf.
function ideal_lpf_Callback(hObject, eventdata, handles)
% hObject    handle to ideal_lpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
b=ideal_lpf(a,30)
axes(handles.axes4);
imshow(b);


% --- Executes on button press in midpoint.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to midpoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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

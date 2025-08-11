classdef HRV_Analyser_GUI_Main_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        HRVAnalyserMainGUI              matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        ImportdataMenu                  matlab.ui.container.Menu
        FromMindraycsvfileMenu          matlab.ui.container.Menu
        FromTMEtxtfileMenu              matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        MainGridLayout                  matlab.ui.container.GridLayout
        TabGroup                        matlab.ui.container.TabGroup
        StartTab                        matlab.ui.container.Tab
        StartTabMainGridLayout          matlab.ui.container.GridLayout
        StartTabUIAxesGridLayout        matlab.ui.container.GridLayout
        StartTabSignalTimeLabel         matlab.ui.control.Label
        StartTabSignalTitleLabel        matlab.ui.control.Label
        StartTabSignalUIAxes4           matlab.ui.control.UIAxes
        StartTabSignalUIAxes5           matlab.ui.control.UIAxes
        StartTabSignalUIAxes3           matlab.ui.control.UIAxes
        StartTabSignalUIAxes2           matlab.ui.control.UIAxes
        StartTabSignalUIAxes1           matlab.ui.control.UIAxes
        StartTabPlotSettingGridLayout   matlab.ui.container.GridLayout
        StartTabPlotSettingLabel        matlab.ui.control.Label
        StartTabPlotDensityGridLayout   matlab.ui.container.GridLayout
        StartTabDensitysLabel           matlab.ui.control.Label
        StartTabDensityAdd30s           matlab.ui.control.Button
        StartTabDensityAdd5s            matlab.ui.control.Button
        StartTabDensitySubtract5s       matlab.ui.control.Button
        StartTabDensitySubtract30s      matlab.ui.control.Button
        StartTabDensityEditField        matlab.ui.control.NumericEditField
        StartTabSignalGridLayout        matlab.ui.container.GridLayout
        StartTabSignalStartTimesLabel   matlab.ui.control.Label
        StartTabSignalAdd5min           matlab.ui.control.Button
        StartTabSignalAdd1min           matlab.ui.control.Button
        StartTabSignalSubtract1min      matlab.ui.control.Button
        StartTabSignalSubtract5min      matlab.ui.control.Button
        StartTabSignalEditField         matlab.ui.control.NumericEditField
        StartTabPlotSignalGridLayout    matlab.ui.container.GridLayout
        StartTabCutSignalButton         matlab.ui.control.Button
        StartTabPlotSignalButton        matlab.ui.control.Button
        StartTabPlotAutoCheckBox        matlab.ui.control.CheckBox
        StartTabPlotSignalLabel         matlab.ui.control.Label
        StartTabInformationGridLayout   matlab.ui.container.GridLayout
        StartTabNoteGridLayout          matlab.ui.container.GridLayout
        StartTabNoteTextArea            matlab.ui.control.TextArea
        StartTabNoteLabel               matlab.ui.control.Label
        StartTabInformationLabel        matlab.ui.control.Label
        StartTabFrequencyGridLayout     matlab.ui.container.GridLayout
        StartTabTFrequencySpinner       matlab.ui.control.NumericEditField
        StartTabFrequencyLabel          matlab.ui.control.Label
        StartTabTimeGridLayout          matlab.ui.container.GridLayout
        StartTabTimeMillisecondSpinner  matlab.ui.control.NumericEditField
        StartTabTimeLabel2              matlab.ui.control.Label
        StartTabTimeSecondSpinner       matlab.ui.control.Spinner
        StartTabTimeLabel1              matlab.ui.control.Label
        StartTabTimeMinuteSpinner       matlab.ui.control.Spinner
        StartTabTimeHourSpinner         matlab.ui.control.Spinner
        StartTabTimeLabel               matlab.ui.control.Label
        StartTabInfoDateGridLayout      matlab.ui.container.GridLayout
        StartTabInfoDatePicker          matlab.ui.control.DatePicker
        StartTabInfoDateLabel           matlab.ui.control.Label
        StartTabInfoIDGridLayout        matlab.ui.container.GridLayout
        StartTabInfoIDEditField         matlab.ui.control.EditField
        StartTabInfoIDLabel             matlab.ui.control.Label
        StartTabInfoNameGridLayout      matlab.ui.container.GridLayout
        StartTabInfoNameEditField       matlab.ui.control.EditField
        StartTabInfoNameLabel           matlab.ui.control.Label
        FilterTab                       matlab.ui.container.Tab
        FilterTabMainGridLayout         matlab.ui.container.GridLayout
        FilterTabPlotSettingGridLayout  matlab.ui.container.GridLayout
        FilterTabPlotSettingLabel       matlab.ui.control.Label
        FilterTabGridLayout             matlab.ui.container.GridLayout
        FilterTabSignalAdd5min          matlab.ui.control.Button
        FilterTabSignalSubtract5min     matlab.ui.control.Button
        FilterTabStartTimeLabel         matlab.ui.control.Label
        FilterTabSignalAdd10s           matlab.ui.control.Button
        FilterTabSignalSubtract10s      matlab.ui.control.Button
        FilterTabSignalEditField        matlab.ui.control.NumericEditField
        FilterTabSignalGridLayout       matlab.ui.container.GridLayout
        FilterTabSignalTimesLabel       matlab.ui.control.Label
        FilterTabSignalTitleLabel       matlab.ui.control.Label
        FilterTabSignalUIAxes1          matlab.ui.control.UIAxes
        FilterTabSignalUIAxes2          matlab.ui.control.UIAxes
        FilterTabPlotSignalGridLayout   matlab.ui.container.GridLayout
        FilterTabPlotFilterAllButton    matlab.ui.control.Button
        FilterTabPlotSignalLabel        matlab.ui.control.Label
        FilterTabPlotSignalButton       matlab.ui.control.Button
        FilterTabPlotAutoButtonGroup    matlab.ui.container.ButtonGroup
        FilterTabPlotAutoButton_Window  matlab.ui.control.RadioButton
        FilterTabPlotAutoButton_All     matlab.ui.control.RadioButton
        FilterTabPlotAutoCheckBox       matlab.ui.control.CheckBox
        FilterTabPlotFilterWindowButton  matlab.ui.control.Button
        FilterTabFilterSettingGridLayout  matlab.ui.container.GridLayout
        FilterTabLowPassOrderSpinner    matlab.ui.control.Spinner
        Label                           matlab.ui.control.Label
        FilterTabHighPassOrderSpinner   matlab.ui.control.Spinner
        FilterTabFilterOrderLabel       matlab.ui.control.Label
        FilterTabFilterFrequencyLabel   matlab.ui.control.Label
        FilterTabLowPassCheckBox        matlab.ui.control.CheckBox
        FilterTabHighPassCheckBox       matlab.ui.control.CheckBox
        FilterTabLowPassSlider          matlab.ui.control.Slider
        FilterTabHighPassSlider         matlab.ui.control.Slider
        FilterTabLowPassLabel           matlab.ui.control.Label
        FilterTabHighPassLabel          matlab.ui.control.Label
        FilterTabLowPassSpinner         matlab.ui.control.Spinner
        FilterTabHighPassSpinner        matlab.ui.control.Spinner
        PredetectTab                    matlab.ui.container.Tab
        PredetectTabMainGridLayout      matlab.ui.container.GridLayout
        PredetectTabPlotSignalGridLayout  matlab.ui.container.GridLayout
        PredetectTabPlotSignalButton    matlab.ui.control.Button
        PredetectTabPlotAutoCheckBox    matlab.ui.control.CheckBox
        PredetectTabPlotSignalLabel     matlab.ui.control.Label
        PredetectTabPlotSettingGridLayout  matlab.ui.container.GridLayout
        PredetectTabPlotSettingLabel    matlab.ui.control.Label
        PredetectTabSignalGridLayout    matlab.ui.container.GridLayout
        PredetectTabSignalStartTimesLabel  matlab.ui.control.Label
        PredetectTabSignalAdd5min       matlab.ui.control.Button
        PredetectTabSignalAdd1min       matlab.ui.control.Button
        PredetectTabSignalSubtract1min  matlab.ui.control.Button
        PredetectTabSignalSubtract5min  matlab.ui.control.Button
        PredetectTabSignalEditField     matlab.ui.control.NumericEditField
        PredetectTabDetectSettingGridLayout  matlab.ui.container.GridLayout
        PredetectTabRangeLabel          matlab.ui.control.Label
        PredetectTabRangeSpinner        matlab.ui.control.Spinner
        PredetectTabAdjustButtonGridLayout  matlab.ui.container.GridLayout
        PredetectTabAdjustAdd20point    matlab.ui.control.Button
        PredetectTabAdjustSubtract20point  matlab.ui.control.Button
        PredetectTabAdjustAdd5Point     matlab.ui.control.Button
        PredetectTabAdjustAdd1Point     matlab.ui.control.Button
        PredetectTabAdjustSubtract1Point  matlab.ui.control.Button
        PredetectTabAdjustSubtract5Point  matlab.ui.control.Button
        PredetectTabAdjustRWaveLabel    matlab.ui.control.Label
        PredetectTabSlopeAutoButton     matlab.ui.control.Button
        PredetectTabSlopeAutoCheckBox   matlab.ui.control.CheckBox
        PredetectTabVoltageAutoButton   matlab.ui.control.Button
        PredetectTabVoltageAutoCheckBox  matlab.ui.control.CheckBox
        PredetectTabSlopeSpinner        matlab.ui.control.Spinner
        PredetectTabVoltageSpinner      matlab.ui.control.Spinner
        PredetectTabSlopeSlider         matlab.ui.control.Slider
        PredetectTabVoltageSlider       matlab.ui.control.Slider
        PredetectTabSlopeLabel          matlab.ui.control.Label
        PredetectTabVoltageLabel        matlab.ui.control.Label
        PredetectTabThresholdLabel      matlab.ui.control.Label
        PredetectTabAdjustUIAxes        matlab.ui.control.UIAxes
        PredetectTabUIAxesGridLayout    matlab.ui.container.GridLayout
        PredetectTabSignalTimeLabel     matlab.ui.control.Label
        PredetectTabSignalTitleLabel    matlab.ui.control.Label
        PredetectTabSignalUIAxes4       matlab.ui.control.UIAxes
        PredetectTabSignalUIAxes5       matlab.ui.control.UIAxes
        PredetectTabSignalUIAxes3       matlab.ui.control.UIAxes
        PredetectTabSignalUIAxes2       matlab.ui.control.UIAxes
        PredetectTabSignalUIAxes1       matlab.ui.control.UIAxes
        DetectTab                       matlab.ui.container.Tab
        DetectTabMainGridLayout         matlab.ui.container.GridLayout
        DetectTabSettingsGridLayout     matlab.ui.container.GridLayout
        DetectAllButton                 matlab.ui.control.Button
        DetectTabLearningRateAutoButton  matlab.ui.control.Button
        DetectTabLearningRateSpinner    matlab.ui.control.Spinner
        DetectTabLearningRateLabel      matlab.ui.control.Label
        DetectTabFitSlopeAutoButton     matlab.ui.control.Button
        DetectTabFitAutoButton          matlab.ui.control.Button
        DetectTabFitSlopeSpinner        matlab.ui.control.Spinner
        DetectTabFitSpinner             matlab.ui.control.Spinner
        DetectTabFitSlopeSlider         matlab.ui.control.Slider
        DetectTabFitSlider              matlab.ui.control.Slider
        DetectTabFitSlopeLabel          matlab.ui.control.Label
        DetectTabFitLabel               matlab.ui.control.Label
        DdetectTabThresholdLabel        matlab.ui.control.Label
        DetectTabPlotSignalGridLayout   matlab.ui.container.GridLayout
        DetectTabShowButtonGroup        matlab.ui.container.ButtonGroup
        DetectTabShowFitnessButton      matlab.ui.control.RadioButton
        DetectTabShowECGSignalButton    matlab.ui.control.RadioButton
        DetectTabPlotSignalButton       matlab.ui.control.Button
        DetectTabPlotAutoCheckBox       matlab.ui.control.CheckBox
        DetectTabPlotSignalLabel        matlab.ui.control.Label
        DetectTabPlotSettingGridLayout  matlab.ui.container.GridLayout
        DetectTabPreviewGridLayout      matlab.ui.container.GridLayout
        DetectTabConfirmButtonGridLayout  matlab.ui.container.GridLayout
        DetectTabConfirmButton          matlab.ui.control.Button
        DetectTabSignalPreviewTimesLabel  matlab.ui.control.Label
        DetectTabSignalPreviewAdd5min   matlab.ui.control.Button
        DetectTabSignalPreviewSubtract5min  matlab.ui.control.Button
        DetectTabSignalPreviewEditField  matlab.ui.control.NumericEditField
        DetectTabPlotSettingLabel       matlab.ui.control.Label
        DetectTabSignalGridLayout       matlab.ui.container.GridLayout
        DetectTabSignalStartTimesLabel  matlab.ui.control.Label
        DetectTabSignalAdd5min          matlab.ui.control.Button
        DetectTabSignalAdd1min          matlab.ui.control.Button
        DetectTabSignalSubtract1min     matlab.ui.control.Button
        DetectTabSignalSubtract5min     matlab.ui.control.Button
        DetectTabSignalEditField        matlab.ui.control.NumericEditField
        DetectTabUIAxesGridLayout       matlab.ui.container.GridLayout
        DetectTabSignalTimeLabel        matlab.ui.control.Label
        DetectTabSignalTitleLabel       matlab.ui.control.Label
        DetectTabSignalUIAxes2          matlab.ui.control.UIAxes
        DetectTabSignalUIAxes3          matlab.ui.control.UIAxes
        DetectTabSignalUIAxes5          matlab.ui.control.UIAxes
        DetectTabSignalUIAxes4          matlab.ui.control.UIAxes
        DetectTabSignalUIAxes1          matlab.ui.control.UIAxes
        VerifyTab                       matlab.ui.container.Tab
        VerifyTabMainGridLayout         matlab.ui.container.GridLayout
        VerifyTabPlotSignalGridLayout   matlab.ui.container.GridLayout
        VerifyTabPlotSignalButton       matlab.ui.control.Button
        VerifyTabPlotAutoCheckBox       matlab.ui.control.CheckBox
        VerifyTabPlotSignalLabel        matlab.ui.control.Label
        VerifyTabSettingsGridLayout     matlab.ui.container.GridLayout
        VerifyTabHRVSDNNGridLayout_3    matlab.ui.container.GridLayout
        HFLFRatioEditField              matlab.ui.control.NumericEditField
        HFLFRatioLabel                  matlab.ui.control.Label
        VerifyTabHRVSDNNGridLayout_2    matlab.ui.container.GridLayout
        HFEditField                     matlab.ui.control.NumericEditField
        HFLabel                         matlab.ui.control.Label
        VerifyTabHRVSDNNGridLayout      matlab.ui.container.GridLayout
        SDNNEditField                   matlab.ui.control.NumericEditField
        SDNNLabel                       matlab.ui.control.Label
        VerifyTabRWaveButton            matlab.ui.control.StateButton
        VerifyTabSemiRWaveButton        matlab.ui.control.StateButton
        VerifyTabNoWaveButton           matlab.ui.control.StateButton
        VerifyTabAbnormalButton         matlab.ui.control.StateButton
        VerifyTabAdjustPointDefinitionEditField  matlab.ui.control.EditField
        VerifyTabAdjustPointEditField   matlab.ui.control.NumericEditField
        VerifyTabAdjustButtonGridLayout  matlab.ui.container.GridLayout
        VerifyTabAdjustNextpoint        matlab.ui.control.Button
        VerifyTabAdjustLastpoint        matlab.ui.control.Button
        VerifyTabAdjustAdd5Point        matlab.ui.control.Button
        VerifyTabAdjustAdd1Point        matlab.ui.control.Button
        VerifyTabAdjustSubtract1Point   matlab.ui.control.Button
        VerifyTabAdjustSubtract5Point   matlab.ui.control.Button
        VerifyTabHRVResetLabel          matlab.ui.control.Label
        VerifySaveNextButton            matlab.ui.control.Button
        VerifyTabHRVTitleLabel          matlab.ui.control.Label
        VerifyTabAdjustUIAxes           matlab.ui.control.UIAxes
        VerifyTabPlotSettingGridLayout  matlab.ui.container.GridLayout
        VerifyTabPlotSettingLabel       matlab.ui.control.Label
        VerifyTabPlotDensityGridLayout  matlab.ui.container.GridLayout
        VerifyTabDensitysLabel          matlab.ui.control.Label
        VerifyTabDensityAdd30s          matlab.ui.control.Button
        VerifyTabDensityAdd5s           matlab.ui.control.Button
        VerifytTabDensitySubtract5s     matlab.ui.control.Button
        VerifyTabDensitySubtract30s     matlab.ui.control.Button
        VerifyTabDensityEditField       matlab.ui.control.NumericEditField
        VerifyTabSignalGridLayout       matlab.ui.container.GridLayout
        VerifyTabSignalStartTimesLabel  matlab.ui.control.Label
        VerifyTabSignalAdd5min          matlab.ui.control.Button
        VerifyTabSignalAdd1min          matlab.ui.control.Button
        VerifyTabSignalSubtract1min     matlab.ui.control.Button
        VerifyTabSignalSubtract5min     matlab.ui.control.Button
        VerifyTabSignalEditField        matlab.ui.control.NumericEditField
        VerifyTabUIAxesGridLayout       matlab.ui.container.GridLayout
        VerifyTabSignalTimeLabel        matlab.ui.control.Label
        VerifyTabSignalTitleLabel       matlab.ui.control.Label
        VerifyTabSignalUIAxes5          matlab.ui.control.UIAxes
        VerifyTabSignalUIAxes3          matlab.ui.control.UIAxes
        VerifyTabSignalUIAxes2          matlab.ui.control.UIAxes
        VerifyTabSignalUIAxes4          matlab.ui.control.UIAxes
        VerifyTabSignalUIAxes1          matlab.ui.control.UIAxes
        OutputTab                       matlab.ui.container.Tab
        OutputTabMainGridLayout         matlab.ui.container.GridLayout
        OutputTabOutputGridLayout       matlab.ui.container.GridLayout
        OutputTabOutputAllButton        matlab.ui.control.Button
        VerifyTabPlotSignalLabel_2      matlab.ui.control.Label
        OutputTabPlotSettingGridLayout  matlab.ui.container.GridLayout
        OutputTabPlotPageGridLayout     matlab.ui.container.GridLayout
        OutputTabPageLabel              matlab.ui.control.Label
        OutputTabPageLast               matlab.ui.control.Button
        OutputTabPageNext               matlab.ui.control.Button
        OutputTabPagePrev               matlab.ui.control.Button
        OutputTabPageFirst              matlab.ui.control.Button
        OutputTabPageEditField          matlab.ui.control.NumericEditField
        OutputTabPlotSettingLabel       matlab.ui.control.Label
        OutputTabPlotDensityGridLayout  matlab.ui.container.GridLayout
        OutputTabDensitysLabel          matlab.ui.control.Label
        OutputTabDensityEditField       matlab.ui.control.NumericEditField
        OutputTabSignalGridLayout       matlab.ui.container.GridLayout
        OutputTabSignalStartTimesLabel  matlab.ui.control.Label
        OutputTabSignalEditField        matlab.ui.control.NumericEditField
        OutputTabHRVGridLayout          matlab.ui.container.GridLayout
        OutputTabHRVAxesGridLayout      matlab.ui.container.GridLayout
        OutputTabHRVHRVLabel            matlab.ui.control.Label
        OutputTabHRVHRLabel             matlab.ui.control.Label
        OutputTabSignalHRVAxes          matlab.ui.control.UIAxes
        OutputTabSignalRRAxes           matlab.ui.control.UIAxes
        OutputTabHRVTimeLabel           matlab.ui.control.Label
        OutputTabStatisticGridLayout    matlab.ui.container.GridLayout
        OutputTabLFHFEditField          matlab.ui.control.NumericEditField
        OutputTabPNN50EditField         matlab.ui.control.NumericEditField
        OutputTabMinRREditField         matlab.ui.control.NumericEditField
        OutputTabLFEditField            matlab.ui.control.NumericEditField
        OutputTabTriangleIdxEditField   matlab.ui.control.NumericEditField
        OutputTabMaxRREditField         matlab.ui.control.NumericEditField
        OutputTabVLFEditField           matlab.ui.control.NumericEditField
        OutputTabSDSDEditField          matlab.ui.control.NumericEditField
        OutputTabMeanRREditField        matlab.ui.control.NumericEditField
        OutputTabTPEditField            matlab.ui.control.NumericEditField
        OutputTabSDNNEditField          matlab.ui.control.NumericEditField
        OutputTabTotalBeatsEditField    matlab.ui.control.NumericEditField
        OutputTabLFHFLabel              matlab.ui.control.Label
        OutputTabLFLabel                matlab.ui.control.Label
        OutputTabVLFLabel               matlab.ui.control.Label
        OutputTabTPLabel                matlab.ui.control.Label
        OutputTabPNN50Label             matlab.ui.control.Label
        OutputTabSDSDLabel              matlab.ui.control.Label
        OutputTabTriangleIdxLabel       matlab.ui.control.Label
        OutputTabSDNNLabel              matlab.ui.control.Label
        OutputTabMinRRLabel             matlab.ui.control.Label
        OutputTabMaxRRLabel             matlab.ui.control.Label
        OutputTabMeanRRLabel            matlab.ui.control.Label
        OutputTabTotalBeatsLabel        matlab.ui.control.Label
        OutputTabFrequencyDomainLabel   matlab.ui.control.Label
        OutputTabTimeDomainLabel        matlab.ui.control.Label
        OutputTabRRIntervalLabel        matlab.ui.control.Label
        OutputTabHRVTitleLabel          matlab.ui.control.Label
        OutputTabInformationGridLayout  matlab.ui.container.GridLayout
        OutputTabInformationLabel       matlab.ui.control.Label
        OutputTabNoteGridLayout         matlab.ui.container.GridLayout
        OutputTabNoteTextArea           matlab.ui.control.TextArea
        OutputTabNoteLabel              matlab.ui.control.Label
        OutputTabFrequencyGridLayout    matlab.ui.container.GridLayout
        OutputTabTFrequencySpinner      matlab.ui.control.NumericEditField
        OutputTabFrequencyLabel         matlab.ui.control.Label
        OutputTabTimeGridLayout         matlab.ui.container.GridLayout
        OutputTabTimeMillisecondSpinner  matlab.ui.control.NumericEditField
        OutputTabTimeLabel2             matlab.ui.control.Label
        OutputTabTimeSecondSpinner      matlab.ui.control.Spinner
        OutputTabTimeLabel1             matlab.ui.control.Label
        OutputTabTimeMinuteSpinner      matlab.ui.control.Spinner
        OutputTabTimeHourSpinner        matlab.ui.control.Spinner
        OutputTabTimeLabel              matlab.ui.control.Label
        OutputTabInfoDateGridLayout     matlab.ui.container.GridLayout
        OutputTabInfoDatePicker         matlab.ui.control.DatePicker
        OutputTabInfoDateLabel          matlab.ui.control.Label
        OutputTabInfoIDGridLayout       matlab.ui.container.GridLayout
        OutputTabInfoIDEditField        matlab.ui.control.EditField
        OutputTabInfoIDLabel            matlab.ui.control.Label
        OutputTabInfoNameGridLayout     matlab.ui.container.GridLayout
        OutputTabInfoNameEditField      matlab.ui.control.EditField
        OutputTabInfoNameLabel          matlab.ui.control.Label
    end

    
    properties (Access = public)
        fileExt= ""
        fileName = 0
        filePath = ""
        sig
        sigOrigin
        sigFs = 256
        sigLen = 3000*500
        sigTimeIdx
        sigMaxIdx
        rIdx = [-1]
        fIdx = [-1]
        rExIdx = [-1]
        rrItv = [-1]
        result = table('Size',[0,18], 'VariableTypes', {'double', 'double', 'string', 'string', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double'}, 'VariableNames',{'StartTime', 'EndTime', 'rIdx', 'rExIdx', 'TotalBeats', 'MeanRR', 'MaxRR', 'MinRR', 'SDNN', 'SDSD', 'TriangleIdx', 'pNN50', 'RMSSD', 'TP', 'VLF', 'LF', 'HF', 'LF_HF'});
        infoName = "None"
        infoID = "NA"
        infoDate = NaT
        infoTime = [0 0 0 0]
        infoNote = ""
        predetectPeakIndex = [-1]
        predetectPeakVal
        predetectPeakSlp
        predetectPeakValMax
        predetectPeakSlpMax
        predetectWaveIndex
        predetectShift = 0
        predetectTemplate
        detectPeakIndex = [-1]
        detectFitSig
        detectThroughIndex
        detectThroughVal
        detectPeakVal
        detectPeakValMax
        detectThroughSlp
        detectThroughValMin
        detectThroughSlpMax
        detectPreRIndex
        detectPreFIndex
        detectThresholdFitAbnormal
        detectRIdx
        detectFIdx
        detectRExIdx
        detectFitVal
        detectFitThr
        detectFitThrIdx
        detectAutoThrFit = 0
        detectAutoThrFitSlp = 0
        detectSigValNorm;
        detectFitValNrom;
        detectFitThrNorm;
    end
    
    properties (Access = private)
        predetectThresholdPeakMaxPercentage = [0.00 0.20]; % percent
        predetectThresholdPeakMinPercentage = [0.00 0.20]; % percent
        predetectThresholdPeakPercentage = 0.30; % thr = thrPct*(thrMax-thrMin)
        predetectPeakSlopeWindow = 0.06 % second
        predetectThresholdPeakSlopeMaxPercentage = [0.00 0.20]; % percent
        predetectThresholdPeakSlopeMinPercentage = [0.00 0.20]; % percent
        predetectThresholdPeakSlopePercentage = 0.30; % thr = thrPct*(thrMax-thrMin)
        predetectPRMaxWidth = 0.45; % second
        predetectRTMaxWidth = 0.85; % second
        predetectTemplateLen = 1.3; % second
        detectPRMaxWidth = 0.45; % second
        detectRTMaxWidth = 0.85; % second
        detectPRStandardWidth = 0.30; % second
        detectRTStandardWidth = 0.70; % second
        detectRRStandardWidth = 0.88; % second
        detectPRAdjustWidth = 0.05; % second
        detectRTAdjustWidth = 0.10; % second
        detectPRAdjustParameter = 0.80; % prWidth = ceil(((prStdWidth*(1-(1-rrEstWidth/rrStdWidth)*prAdjPar))/2+prAdjWidth)*ecg.fs);
        detectRTAdjustParameter = 0.50; % rtWidth = ceil(((rtStdWidth*(1-(1-rrEstWidtha/rrStdWidth)*prAdjPar))/2+rtAdjWidth)*ecg.fs)
        detectSampleIndex = [3 10]; % number
        detectThresholdFitMaxPercentage = [0.00 0.20]; % percent
        detectThresholdFitMinPercentage = [0.00 0.20]; % percent
        detectThresholdFitPercentage = 0.70; % thr = thrPct*(thrMax+thrMin)/2 % Defaut 1.0
        detectFitSlopeWindow = 0.04; % second
        detectThresholdFitSlopeMaxPercentage = [0.00 0.20]; % percent
        detectThresholdFitSlopeMinPercentage = [0.00 0.20]; % percent
        detectThresholdFitSlopePercentage = 0.25; % thr = thrPct*(thrMax-thrMin) default 0.4 % 0.25
        detectThresholdFitAbnormalPercentage = 1.4; % thr = thrPct*thrMax
        detectLearnRatio = 20; %
        detectAdjustWindow = 0.02; % second
    end
    
    methods (Access = private)

        function startPlot(app)
            plotFrom = app.sigFs*app.StartTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*app.StartTabDensityEditField.Value/5);
            plotIdx = 0*plotLen + plotFrom;
            plot(app.StartTabSignalUIAxes1, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1))
            plotIdx = 1*plotLen + plotFrom;
            plot(app.StartTabSignalUIAxes2, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1))
            plotIdx = 2*plotLen + plotFrom;
            plot(app.StartTabSignalUIAxes3, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1))
            plotIdx = 3*plotLen + plotFrom;
            plot(app.StartTabSignalUIAxes4, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1))
            plotIdx = 4*plotLen + plotFrom;
            plot(app.StartTabSignalUIAxes5, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1))
        end

        function filterApply(app, condition)
            applyAll = 0;
            applyWindow = 0;
            if nargin == 2
                if condition == "applyAll"
                    applyAll = 1;
                elseif condition == "applyWindow"
                    applyWindow = 1;
                end
            elseif nargin == 1
                applyAll = app.FilterTabPlotAutoButton_All.Value;
                applyWindow = app.FilterTabPlotAutoButton_Window.Value;
            end
            highPassFc = app.FilterTabHighPassSpinner.Value;
            lowPassFc = app.FilterTabLowPassSpinner.Value;
            highPassOrder = app.FilterTabHighPassOrderSpinner.Value;
            lowPassOrder = app.FilterTabLowPassOrderSpinner.Value;
            plotFrom = app.sigFs*app.FilterTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*300);
            app.sig = app.sigOrigin;
            if app.FilterTabHighPassCheckBox.Value && not (highPassFc == 0)
                [highButterB,highButterA] = butter(highPassOrder, highPassFc/(app.sigFs/2),'high');
                if applyAll
                    app.sig = filter(highButterB,highButterA,app.sig);
                elseif applyWindow
                    app.sig(plotFrom:plotFrom+plotLen-1) = filter(highButterB,highButterA,app.sig(plotFrom:plotFrom+plotLen-1));
                end
            end
            if app.FilterTabLowPassCheckBox.Value
                [lowButterB,lowButterA] = butter(lowPassOrder, lowPassFc/(app.sigFs/2),'low');
                if applyAll
                    app.sig = filter(lowButterB,lowButterA,app.sig);
                elseif applyWindow
                    app.sig(plotFrom:plotFrom+plotLen-1) = filter(lowButterB,lowButterA,app.sig(plotFrom:plotFrom+plotLen-1));
                end
            end
        end

        function filterPlot(app, condition)
            if nargin == 2
                app.filterApply(condition)
            elseif app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterApply()
            end
            plotFrom = app.sigFs*app.FilterTabSignalEditField.Value+1;
            plotLen1 = ceil(app.sigFs*10);
            plot(app.FilterTabSignalUIAxes1, app.sig(plotFrom:plotFrom+plotLen1-1));
            plotLen2 = ceil(app.sigFs*300);
            plot(app.FilterTabSignalUIAxes2, app.sig(plotFrom:plotFrom+plotLen2-1));
        end

        function predetectInitialize(app)
            % 1.Predetect R waves
            % This part performs a traditional method to predetect R wave. Firstly,
            % it finds out all maximums of the signal. Secondly, since heart rate
            % usually dose not exceed 300 bpm, we reserve only one maximum in each
            % peak window of 0.2 second. Thirdly, we should also remove those lower
            % maximums which there is a higher maximum no farther than 0.2 second,
            % because sometimes one maximum appears at the end of a window, and
            % another one appears at the beginning of the next, which causes a
            % narrower interval than 0.2 second between two maximums. Fourthly,
            % find the threshold of the height of R waves, to distinguish R waves
            % from other peaks. Lastly, find the threshold of the slope of R waves,
            % actually the mean of differences within a certain window around R
            % waves, to distinguish R waves from T waves.
        
            % 1.1.Find maximums
            % To find maximums, we first solve the derivation, or called difference
            % in discrete signal. And find the indices of sites where the
            % difference changing from positive to negative, and they are maximums.
            plotFrom = app.sigFs*app.PredetectTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*300);
            sigDiff = diff(app.sig(plotFrom:plotFrom+plotLen-1));      % Difference of ECG signal 
            sigDiffLen = length(sigDiff); % Length of difference of ECG signal
            sigMaxIdx = find(sigDiff(1:sigDiffLen-1).*sigDiff(2:sigDiffLen)<0 ...
                & sigDiff(1:sigDiffLen-1)>0)+plotFrom; % Indices of maximums of ECG signal
                % Note: Add 1 to adjust each index.
        
            % 1.2.Reserve one maximum in each peak window
            % To reserve the highest maximum in a peak window, we simply resort the
            % signal in the peak window, and determine if the max value is a
            % maximum (sometime there is a max value but not a maximum). This
            % algorithm is relatively inefficient, need to be intensely considered.
            pkIdx = [];                                  % Indices of peaks
            pkWLen = ceil(app.PredetectTabRangeSpinner.Value*app.sigFs);     % Length of reserve window, the default is 0.2 second
            for w = plotFrom:pkWLen:plotFrom+plotLen-1 % Beginning of each window
                sigW = app.sig(w:min(w+pkWLen-1, plotFrom+plotLen-1)); % Signal in window, not out of range
                sigMaxW = max(sigW);                     % Find the max value
                sigMaxIdxW = find(sigW==sigMaxW)+w-1;    % Find the index of max value
                if ismember(sigMaxIdxW, sigMaxIdx(w<=sigMaxIdx & sigMaxIdx<=w+pkWLen-1)) % If the max value is maximum
                    pkIdx = [pkIdx, sigMaxIdxW]; %#ok<AGROW> % Add the index of max value to peak index
                end
            end
        
            % 1.3.Remove excess maximums
            % We should also remove those lower maximums which there is a higher
            % maximum no farther than 0.2 second, because sometimes one maximum
            % appears at the end of a window, and another one appears at the
            % beginning of the next, which causes a narrower interval than 0.2
            % second between two maximums.
            pkIdxLen = length(pkIdx); % Length of indices of peaks (maximums)
            i = 1; % Index by number, cause the indices of peaks will change
            while i < pkIdxLen % No need to process the last peak cause there is not a next one
                if(pkIdx(i+1)-pkIdx(i)) < pkWLen % If the interval is less than window
                    if app.sig(pkIdx(i+1)) > app.sig(pkIdx(i)) % Remove the lower one
                        pkIdx(i) = []; %#ok<AGROW>
                    else
                        pkIdx(i+1) = []; %#ok<AGROW>
                    end
                    pkIdxLen = length(pkIdx); % Update the length to prevent error
                    if ~i==1 % If i not equals to 1, reduce 1 to make sure each peak processed
                        i=i-1;
                    end
                end
                i=i+1; % Move to the next peak, or continue if a peak was removed
            end
            slpVal = [];
            slpLen = ceil(app.predetectPeakSlopeWindow*app.sigFs/2); % Length of range to calculate slope
            for i = 1:length(pkIdx)
                slp = mean(abs(diff(app.sig(max(1,pkIdx(i)-slpLen):min(app.sigLen-1,pkIdx(i)+slpLen)))));
                slpVal = [slpVal slp]; %#ok<AGROW>
            end
            app.predetectPeakIndex = pkIdx; % Save result
            app.predetectPeakVal = app.sig(pkIdx);
            app.predetectPeakSlp = slpVal;
            app.predetectPeakValMax = max(app.predetectPeakVal);
            app.predetectPeakSlpMax = max(slpVal);
            if app.PredetectTabVoltageAutoCheckBox.Value == 1
                app.predetectAutoThresholdVoltage()
            end
            if app.PredetectTabSlopeAutoCheckBox.Value == 1
                app.predetectAutoThresholdSlope()
            end
        end
        
        function predetectAutoThresholdVoltage(app)
            % 1.4.Find threshold and remove peaks under that in each predetect window
            % The threshold is calculated using maximums, the default is the 30% of
            % difference between the top 20% and bottom 20% of maximums, to
            % distinguish two different compositions of maximums there may have
            % (for example, P waves and R waves).
            pkIdx = app.predetectPeakIndex;
            pkIdxLen = length(pkIdx);
            thrPeakMaxPct = app.predetectThresholdPeakMaxPercentage; % Percentage of max peaks used to find threshold
            thrPeakMinPct = app.predetectThresholdPeakMinPercentage; % Percentage of min peaks used to find threshold
            thrPeakPct = app.predetectThresholdPeakPercentage; % Adjust percentage (thrPeakMax-thrPeakMin)*thrPeakPct
            pkSortMaxVal = sort(app.sig(pkIdx),'descend'); % Sorted peak indices, descending
            pkSortMinVal = sort(app.sig(pkIdx));          % Sorted peak indices, ascending
            pkMaxIdx = ceil(max(thrPeakMaxPct(1)*pkIdxLen,1)):ceil(min(max(thrPeakMaxPct(2)*pkIdxLen,1),pkIdxLen)); % Make the indices
            pkMinIdx = ceil(max(thrPeakMinPct(1)*pkIdxLen,1)):ceil(min(max(thrPeakMinPct(2)*pkIdxLen,1),pkIdxLen)); % Make the indices
            thrPeakMax = mean(pkSortMaxVal(pkMaxIdx)); % Apply the indices
            thrPeakMin = mean(pkSortMinVal(pkMinIdx)); % Apply the indices
            thrPeak = thrPeakPct*(thrPeakMax-thrPeakMin); % Find the threshold
            app.PredetectTabVoltageSpinner.Value = thrPeak*100/app.predetectPeakValMax;
            app.PredetectTabVoltageSlider.Value = thrPeak*100/app.predetectPeakValMax;
        end
        
        function predetectAutoThresholdSlope(app)
            % 1.5.Adjust peak by slope
            slpVal = app.predetectPeakSlp;
            slpValLen = length(slpVal);
            thrPkSlpMaxPct = app.predetectThresholdPeakSlopeMaxPercentage; % Percentage of max slopes used to find threshold
            thrPkSlpMinPct = app.predetectThresholdPeakSlopeMinPercentage; % Percentage of min slopes used to find threshold
            thrPkSlpPct = app.predetectThresholdPeakSlopePercentage; % Adjust percentage (thrSlopeMax-thrSlopeMin)*thrSlopePct
            slpSortMaxVal = sort(slpVal, 'descend');
            slpSortMinVal = sort(slpVal);
            slpMaxIdx = ceil(max(thrPkSlpMaxPct(1)*slpValLen,1):min(min(thrPkSlpMaxPct(2)*slpValLen,1),slpValLen));
            slpMinIdx = ceil(max(thrPkSlpMinPct(1)*slpValLen,1):min(min(thrPkSlpMinPct(2)*slpValLen,1),slpValLen));
            thrWaveSlpMax = mean(slpSortMaxVal(slpMaxIdx));
            thrWaveSlpMin = mean(slpSortMinVal(slpMinIdx));
            thrSlp = thrPkSlpPct*(thrWaveSlpMax-thrWaveSlpMin);
            app.PredetectTabSlopeSpinner.Value = thrSlp*100/app.predetectPeakSlpMax;
            app.PredetectTabSlopeSlider.Value = thrSlp*100/app.predetectPeakSlpMax;
        end

        function predetectApply(app)
            waveIdx = [];
            pkIdx = app.predetectPeakIndex;
            pkVal = app.predetectPeakVal;
            pkSlp = app.predetectPeakSlp;
            thrVal = app.predetectPeakValMax*app.PredetectTabVoltageSpinner.Value/100;
            thrSlp = app.predetectPeakSlpMax*app.PredetectTabSlopeSpinner.Value/100;
            for i = 1:length(pkIdx)
                if pkVal(i)>thrVal && pkSlp(i)>thrSlp
                    waveIdx = [waveIdx pkIdx(i)]; %#ok<AGROW>
                end
            end
            app.predetectWaveIndex = waveIdx;
            rrEstWidth = mean(diff(waveIdx))/app.sigFs; % second
            app.predetectTemplateLen = min(1.3,rrEstWidth);
            app.PredetectTabRangeSpinner.Value = app.predetectTemplateLen;
        end

        function predetectPlot(app)
            app.predetectApply()
            waveIdx = app.predetectWaveIndex;
            plotFrom = app.sigFs*app.PredetectTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*60);
            thrVal = app.predetectPeakValMax*app.PredetectTabVoltageSpinner.Value/100;
            thrSlp = app.predetectPeakSlpMax*app.PredetectTabSlopeSpinner.Value/100; %#ok<NASGU>
            thrLine = ones(1,plotLen).*thrVal;
            plotIdx = 0*plotLen + plotFrom;
            plot(app.PredetectTabSignalUIAxes1, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1), (plotIdx:plotIdx+plotLen-1)/app.sigFs, thrLine, 'g-', waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)), 'r.');
            plotIdx = 1*plotLen + plotFrom;
            plot(app.PredetectTabSignalUIAxes2, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1), (plotIdx:plotIdx+plotLen-1)/app.sigFs, thrLine, 'g-',  waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)), 'r.');
            plotIdx = 2*plotLen + plotFrom;
            plot(app.PredetectTabSignalUIAxes3, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1), (plotIdx:plotIdx+plotLen-1)/app.sigFs, thrLine, 'g-',  waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)), 'r.');
            plotIdx = 3*plotLen + plotFrom;
            plot(app.PredetectTabSignalUIAxes4, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1), (plotIdx:plotIdx+plotLen-1)/app.sigFs, thrLine, 'g-',  waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)), 'r.');
            plotIdx = 4*plotLen + plotFrom;
            plot(app.PredetectTabSignalUIAxes5, (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1), (plotIdx:plotIdx+plotLen-1)/app.sigFs, thrLine, 'g-',  waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(waveIdx(plotIdx<=waveIdx&waveIdx<=plotIdx+plotLen-1)), 'r.');
            app.predetectAdjPlot()
        end

        function predetectAdjPlot(app)
            waveIdx = app.predetectWaveIndex + app.predetectShift;
            prMaxW = ceil(app.predetectPRMaxWidth*app.sigFs);
            rtMaxW = ceil(app.predetectRTMaxWidth*app.sigFs);
            app.predetectTemplate = zeros(1,prMaxW+rtMaxW+1);

            prStdWidth = app.detectPRStandardWidth; % second
            rtStdWidth = app.detectRTStandardWidth; % second
            rrStdWidth = app.detectRRStandardWidth; % second
            prAdjWidth = app.detectPRAdjustWidth; % second
            rtAdjWidth = app.detectRTAdjustWidth; % second plot(ecg.sig(preRIdx(3)-prWidthW:preRIdx(3)+rtWidthW))
            prAdjPara = app.detectPRAdjustParameter; % ratio
            rtAdjPara = app.detectRTAdjustParameter; % ratio
            tempLen = app.predetectTemplateLen; % second
            prWidth = ceil(((prStdWidth*(1-(1-tempLen/rrStdWidth)*prAdjPara))/2+prAdjWidth)*app.sigFs); % sample
            rtWidth = ceil(((rtStdWidth*(1-(1-tempLen/rrStdWidth)*rtAdjPara))/2+rtAdjWidth)*app.sigFs); % sample
            prWidth = min(prWidth, prMaxW);
            rtWidth = min(rtWidth, rtMaxW);

            for i = 1:length(waveIdx)
                if waveIdx(i)-prMaxW>=1 && waveIdx(i)+rtMaxW<=app.sigLen
                    app.predetectTemplate = app.predetectTemplate + app.sig(waveIdx(i)-prMaxW:waveIdx(i)+rtMaxW);
                end
            end
            app.predetectTemplate = app.predetectTemplate./length(waveIdx);
            plot(app.PredetectTabAdjustUIAxes, 1:prMaxW+rtMaxW+1, app.predetectTemplate, prMaxW+1, app.predetectTemplate(prMaxW+1),"r.")
            xline(app.PredetectTabAdjustUIAxes, max(1,prMaxW-prWidth))
            xline(app.PredetectTabAdjustUIAxes, min(prMaxW+rtMaxW+1,prMaxW+1+rtWidth))
        end

        function detectInitialize(app)
            plotFrom = 1;
            plotLen = ceil(app.sigFs*300);
            prMaxWidth = ceil(app.detectPRMaxWidth*app.sigFs); % sample
            rtMaxWidth = ceil(app.detectRTMaxWidth*app.sigFs); % sample
            prStdWidth = app.detectPRStandardWidth; % second
            rtStdWidth = app.detectRTStandardWidth; % second
            rrStdWidth = app.detectRRStandardWidth; % second
            prAdjWidth = app.detectPRAdjustWidth; % second
            rtAdjWidth = app.detectRTAdjustWidth; % second plot(ecg.sig(preRIdx(3)-prWidthW:preRIdx(3)+rtWidthW))
            prAdjPara = app.detectPRAdjustParameter; % ratio
            rtAdjPara = app.detectRTAdjustParameter; % ratio
            tempLen = app.predetectTemplateLen; % second

            prWidth = ceil(((prStdWidth*(1-(1-tempLen/rrStdWidth)*prAdjPara))/2+prAdjWidth)*app.sigFs); % sample
            rtWidth = ceil(((rtStdWidth*(1-(1-tempLen/rrStdWidth)*rtAdjPara))/2+rtAdjWidth)*app.sigFs); % sample
            prWidth = min(prWidth, prMaxWidth);
            rtWidth = min(rtWidth, rtMaxWidth);
            template = app.predetectTemplate;
            fitSig = [];
            for i = plotFrom+prMaxWidth : plotFrom+plotLen-rtMaxWidth
                templateSamp = template(prMaxWidth+1-prWidth:prMaxWidth+1+rtWidth);
                fit = mean(abs(app.sig(i-prWidth:i+rtWidth)-templateSamp));
                fitSig = [fitSig fit]; %#ok<AGROW>
            end
            fitSig = [ones(1,prMaxWidth).*mean(fitSig),fitSig,ones(1,rtMaxWidth).*mean(fitSig)];
            fitSigLen = length(fitSig);
            % 2.2.1.Fit threshold
            fitDiff = diff(fitSig);
            fitDiffLen = length(fitDiff);
            fitPkIdx = find(fitDiff(1:fitDiffLen-1).*fitDiff(2:fitDiffLen)<0 & fitDiff(1:fitDiffLen-1)>0)+plotFrom+1;
            fitTrIdx = find(fitDiff(1:fitDiffLen-1).*fitDiff(2:fitDiffLen)<0 & fitDiff(1:fitDiffLen-1)<0)+plotFrom+1;
            fitTrIdxLen = length(fitTrIdx);
            fitSlpVal = [];
            fitSlpLen = ceil(app.detectFitSlopeWindow*app.sigFs/2);
            for i = 1:fitTrIdxLen
                fitSlp = abs(sum(fitDiff(max(fitTrIdx(i)-fitSlpLen,1):fitTrIdx(i)))-sum(fitDiff(fitTrIdx(i):min(fitTrIdx(i)+fitSlpLen,fitSigLen))))/(2*fitSlpLen);
                fitSlpVal = [fitSlpVal fitSlp]; %#ok<AGROW>
            end
            app.detectFitSig = fitSig;
            app.detectThroughIndex = fitTrIdx; % Save result
            app.detectPeakIndex = fitPkIdx; % Save result
            app.detectThroughVal = fitSig(fitTrIdx);
            app.detectPeakVal = fitSig(fitPkIdx); % Save result
            app.detectThroughSlp = fitSlpVal;
            app.detectPeakValMax = max(app.detectPeakVal);
            app.detectThroughSlpMax = max(fitSlpVal);
        end

        function detectAutoThresholdFit(app)
            fitSig = app.detectFitSig;
            fitPkIdx = app.detectPeakIndex;
            fitTrIdx = app.detectThroughIndex;
            thrFitMaxPct = app.detectThresholdFitMaxPercentage;
            thrFitMinPct = app.detectThresholdFitMinPercentage;
            thrFitPct = app.detectThresholdFitPercentage;
            fitTrIdxLen = length(fitTrIdx);
            fitPkIdxLen = length(fitPkIdx);
            fitPeakSortMaxVal = sort(fitSig(fitPkIdx),'descend');
            fitTroughSortMinVal = sort(fitSig(fitTrIdx));
            fitPeakMaxIdx = ceil(max(thrFitMaxPct(1)*fitPkIdxLen,1)):ceil(min(max(thrFitMaxPct(2)*fitPkIdxLen,1),fitPkIdxLen));
            fitTroughMinIdx = ceil(max(thrFitMinPct(1)*fitTrIdxLen,1)):ceil(min(max(thrFitMinPct(2)*fitTrIdxLen,1),fitTrIdxLen));
            thrFitMax = mean(fitPeakSortMaxVal(fitPeakMaxIdx));
            thrFitMin = mean(fitTroughSortMinVal(fitTroughMinIdx));
            if thrFitMaxPct == 0
                thrFitMax = 1000;
            end
            if thrFitMinPct == 0
                thrFitMin = 0;
            end
            thrFit = thrFitPct*(thrFitMax+thrFitMin)/2;
            app.detectAutoThrFit = thrFit;
            app.detectThresholdFitAbnormal = thrFitMax;
            app.DetectTabFitSpinner.Value = thrFit*100/app.detectPeakValMax;
            app.DetectTabFitSlider.Value = thrFit*100/app.detectPeakValMax;
        end

        function detectAutoThresholdSlope(app)
            thrFitSlpMaxPct = app.detectThresholdFitSlopeMaxPercentage;
            thrFitSlpMinPct = app.detectThresholdFitSlopeMinPercentage;
            thrFitSlpPct = app.detectThresholdFitSlopePercentage;
            fitSlpVal = app.detectThroughSlp;
            fitSlpValLen = length(fitSlpVal);
            fitSlpSortMaxVal = sort(fitSlpVal,'descend');
            fitSlpSortMinVal = sort(fitSlpVal);
            fitSlpMaxIdx = ceil(max(thrFitSlpMaxPct(1)*fitSlpValLen,1):min(min(thrFitSlpMaxPct(2)*fitSlpValLen,1):fitSlpValLen));
            fitSlpMinIdx = ceil(max(thrFitSlpMinPct(1)*fitSlpValLen,1):min(min(thrFitSlpMinPct(2)*fitSlpValLen,1):fitSlpValLen));
            thrFitSlpMax = mean(fitSlpSortMaxVal(fitSlpMaxIdx));
            thrFitSlpMin = mean(fitSlpSortMinVal(fitSlpMinIdx));
            if thrFitSlpMaxPct == 0
                thrFitSlpMax = 0;
            end
            if thrFitSlpMinPct == 0
                thrFitSlpMin = 0;
            end
            thrFitSlp = thrFitSlpPct*(thrFitSlpMax-thrFitSlpMin);
            app.detectAutoThrFitSlp = thrFitSlp;
            app.DetectTabFitSlopeSpinner.Value = thrFitSlp*100/app.detectThroughSlpMax;
            app.DetectTabFitSlopeSlider.Value = thrFitSlp*100/app.detectThroughSlpMax;
        end

        function detectApply(app, condition)
            prMaxWidth = ceil(app.detectPRMaxWidth*app.sigFs); % sample
            rtMaxWidth = ceil(app.detectRTMaxWidth*app.sigFs); % sample
            prStdWidth = app.detectPRStandardWidth; % second
            rtStdWidth = app.detectRTStandardWidth; % second
            rrStdWidth = app.detectRRStandardWidth; % second
            prAdjWidth = app.detectPRAdjustWidth; % second
            rtAdjWidth = app.detectRTAdjustWidth; % second plot(ecg.sig(preRIdx(3)-prWidthW:preRIdx(3)+rtWidthW))
            prAdjPara = app.detectPRAdjustParameter; % ratio
            rtAdjPara = app.detectRTAdjustParameter; % ratio
            tempLen = app.predetectTemplateLen;
            prWidth = ceil(((prStdWidth*(1-(1-tempLen/rrStdWidth)*prAdjPara))/2+prAdjWidth)*app.sigFs); % sample
            rtWidth = ceil(((rtStdWidth*(1-(1-tempLen/rrStdWidth)*rtAdjPara))/2+rtAdjWidth)*app.sigFs); % sample
            prWidth = min(prWidth, prMaxWidth);
            rtWidth = min(rtWidth, rtMaxWidth);
            fitSlpLen = ceil(app.detectFitSlopeWindow*app.sigFs/2);
            template = app.predetectTemplate;
            if nargin == 2 && condition == "applyAll"
                plotTo = app.sigLen;
            else
                plotTo = app.sigFs*app.DetectTabSignalPreviewEditField.Value;
            end
            % 2.4.Detecting
            lrRatio = app.DetectTabLearningRateSpinner.Value/100;
            adjWindow = ceil(app.detectAdjustWindow*app.sigFs/2);
            thrFitVal = app.DetectTabFitSpinner.Value*app.detectPeakValMax/100;
            thrFitSlp = app.DetectTabFitSlopeSpinner.Value*app.detectThroughSlpMax/100;
            thrFitOri = thrFitVal;
            % thrFitBase = thrFitMin;
            thrFitSlpOri = thrFitSlp;
            % thrFitSlpBase = thrFitSlpMax;
            thrFitAbn = app.detectThresholdFitAbnormal*app.detectThresholdFitAbnormalPercentage;
            peakIdx = [];
            troughIdx = [];
            rIdx = [];
            fIdx = [];
            rExIdx = [];
            rrItv = [];
            fitThr = [];
            fitThrIdx = [];
            updateFIdx = 0;
            updateRExIdx = 0;
            updateThr = 0;
            fitPre = -1;
            fitSlpPre = -1;
            fitVal = ones(1, plotTo, 'single').*max(app.detectFitSig);
            fitDiff = zeros(1, plotTo-1, 'single');
            if condition == "applyAll" || app.DetectTabPlotAutoCheckBox.Value == 0
                wb = waitbar(0,"Runing...");
                tic
            end
            for i = 1:plotTo % 对每个点依次执行以下操作
                % 计算Fit函数
                if i < prMaxWidth+1 % 如果左侧长度不足以计算Fit函数，则填充最大值（已预填充）
                    % fit = thrFitMax;
                    % fitSig(i) = fit;
                elseif prMaxWidth+1 <= i && i <= app.sigLen-rtMaxWidth % 如果两侧长度足以计算Fit函数，则计算
                    templateSamp = template(prMaxWidth+1-prWidth:prMaxWidth+1+rtWidth); % 提取用于计算Fit函数的模板
                    fit = mean(abs(app.sig(i-prWidth:i+rtWidth)-templateSamp)); % 计算Fit函数值
                    fitVal(i) = fit;
                elseif app.sigLen-rtMaxWidth < i && i <= app.sigLen % 如果右侧长度不足以计算Fit函数，则填充最大值（已预填充）
                    % fit = thrFitMax;
                    % fitSig(i) = fit;
                end
                % 计算Fit函数的差分函数
                if i > 1 && i <= app.sigLen
                    fitDiff(i) = fitVal(i)-fitVal(i-1);
                end
                % 寻找极值点，需要至少2个差分（i=3时才存在2个差分）
                if i > 2 && i <= app.sigLen%+fitSlpLen
                    if fitDiff(i-1)*fitDiff(i-2) < 0 % 如果i-2是极值点
                        if fitDiff(i-2) < 0 % 如果i-2是极小值点
                            troughIdx = [troughIdx i-2]; %#ok<AGROW>
                            % adjMaxIdx = app.sigMaxIdx((i-1-adjWindow<=app.sigMaxIdx)&(app.sigMaxIdx<=i-1+adjWindow));
                            % if length(adjMaxIdx) >= 1
                            %     troughIdx = [troughIdx adjMaxIdx(ceil(length(adjMaxIdx)/2))]; %#ok<AGROW>
                            % end
                        elseif fitDiff(i-2) > 0 % 如果i-2是极大值点
                            peakIdx = [peakIdx i-2]; %#ok<AGROW>
                        end
                    end
                end
                if ismember(i-fitSlpLen, troughIdx(max(end-fitSlpLen,1):end)) % 处理有条件计算fitSlp的Fit函数极小值点
                    fitSlp = abs(sum(fitDiff(i-2*fitSlpLen:i-fitSlpLen-1))-sum(fitDiff(i-fitSlpLen:i-1)))/(2*fitSlpLen);
                    if fitSlp > thrFitSlp % 如果fitSlp在阈值以上
                        if fitVal(i-fitSlpLen) < thrFitVal % 如果fitVal在阈值以下
                            sigAdjRange = app.sig(i-fitSlpLen-adjWindow:i-fitSlpLen+adjWindow);
                            rAdjPoint = find(sigAdjRange==max(sigAdjRange))+i-fitSlpLen-adjWindow-1;
                            if updateFIdx == 0 && ~isempty(rExIdx) % 如果这不是第一个R峰，且前面没有异常波
                                rIdx = [rIdx rAdjPoint]; %#ok<AGROW> % 这是一个全R峰
                                if updateRExIdx == 1 % 如果上一个峰是半R峰
                                    rrItv = [rrItv rIdx(end)-rExIdx(end)]; %#ok<AGROW>
                                elseif updateRExIdx == 0 % 如果上一个峰是全R峰
                                    rrItv = [rrItv rIdx(end)-rIdx(end-1)]; %#ok<AGROW>
                                end
                                updateRExIdx = 0; % 标示当前峰不为半R峰
                            else % 前面有异常峰，或这是第一个峰，就认为这是半R峰
                                rExIdx = [rExIdx  rAdjPoint]; %#ok<AGROW>
                                updateRExIdx = 1; % 标示当前峰为半R峰
                            end
                            updateFIdx = 0; % 标示当前峰不为异常峰
                            if 1 <=  rAdjPoint-prMaxWidth &&  rAdjPoint+rtMaxWidth <= app.sigLen % 如果有条件更新模板
                                template = (1-lrRatio)*template + lrRatio*app.sig( rAdjPoint-prMaxWidth: rAdjPoint+rtMaxWidth);
                                if updateThr || length(rIdx) > 1
                                    if fitPre ~= -1
                                        thrFitVal = max(thrFitVal+lrRatio*(fitVal(i-fitSlpLen)-fitPre),thrFitOri);
                                    end
                                    if fitSlpPre ~= -1
                                        thrFitSlp = max(thrFitSlp+lrRatio*(fitSlp-fitSlpPre),thrFitSlpOri);
                                    end
                                    updateThr = 1;
                                    fitPre = fitVal(i-fitSlpLen);
                                    fitSlpPre = fitSlp;
                                end
                            end
                        else % 如果fitVal在阈值以上
                            if updateFIdx == 0
                                fIdx = [fIdx i-fitSlpLen]; %#ok<AGROW>
                            else
                                if fitVal(fIdx(end)) < fitVal(i-fitSlpLen)
                                    fIdx(end) = i-fitSlpLen;
                                end
                            end
                            updateFIdx = 1;
                        end
                    end
                elseif ismember(i-fitSlpLen,peakIdx(max(end-fitSlpLen,1):end))
                    if fitVal(i-fitSlpLen) > thrFitAbn
                        if updateFIdx == 0
                            fIdx = [fIdx i-fitSlpLen]; %#ok<AGROW>
                        else
                            if fitVal(fIdx(end)) < fitVal(i-fitSlpLen)
                                fIdx(end) = i-fitSlpLen;
                            end
                        end
                        updateFIdx = 1;
                    end
                end
                %barStr = ['Remain',num2str(100*i/(ecg.len),'%.2f'),'%-',num2str((ecg.len-i)*toc/60,'%.1f'),"min"];
                if ~rem(i-fitSlpLen,app.sigFs)
                    fitThr = [fitThr thrFitVal]; %#ok<AGROW>
                    fitThrIdx = [fitThrIdx i-fitSlpLen]; %#ok<AGROW>
                end
                if ~rem(i,50000) && (app.DetectTabPlotAutoCheckBox.Value == 0 || condition == "applyAll")
                    barStr = ['Remain ',num2str(100*i/(app.sigLen),'%.2f'),'% ',num2str((app.sigLen-i)*toc/3000000,'%.1f')];
                    waitbar(i/(app.sigLen),wb,barStr);
                    tic
                end
            end
            if condition == "applyAll"
                app.rIdx = rIdx;
                app.fIdx = fIdx;
                app.rExIdx = rExIdx;
            end
            app.detectRIdx = rIdx;
            app.detectFIdx = fIdx;
            app.detectRExIdx = rExIdx;
            app.detectFitVal = fitVal;
            app.detectFitThr = fitThr;
            app.detectFitThrIdx = fitThrIdx;
            if condition == "applyAll" || app.DetectTabPlotAutoCheckBox.Value == 0
                close(wb)
            end
        end

        function detectPlot(app, condition)
            if nargin == 2
                if condition == "changeShow"
                else
                    app.detectApply(condition)
                end
            else
                app.detectApply("applyWindow")
            end
            rIdx = app.detectRIdx; %#ok<*ADPROP>
            fIdx = app.detectFIdx;
            rExIdx = app.detectRExIdx;
            if nargin == 1 || condition ~= "changeShow"
                meanSig = mean(app.sig);
                stdSig = std(app.sig);
                sigVal = rescale(app.sig, "InputMin",meanSig-3*stdSig,"InputMax",meanSig+3*stdSig);
                meanFitVal = mean(app.detectFitVal);
                stdFitVal = std(app.detectFitVal);
                fitValfitThr = rescale([app.detectFitVal app.detectFitThr], "InputMin",meanFitVal-3*stdFitVal,"InputMax",meanFitVal+3*stdFitVal);
                fitVal = fitValfitThr(1:length(app.detectFitVal));
                fitThr = fitValfitThr(length(app.detectFitVal)+1:end);
                app.detectSigValNorm = sigVal;
                app.detectFitValNrom = fitVal;
                app.detectFitThrNorm = fitThr;
            else
                sigVal = app.detectSigValNorm;
                fitVal = app.detectFitValNrom;
                fitThr = app.detectFitThrNorm;
            end
            fitThrIdx = app.detectFitThrIdx;
            plotFrom = app.sigFs*app.DetectTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*60);
            plotIdx = 0*plotLen + plotFrom;
            if app.DetectTabShowFitnessButton.Value == 1
                plot(app.DetectTabSignalUIAxes1,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            elseif app.DetectTabShowECGSignalButton.Value == 1
                plot(app.DetectTabSignalUIAxes1,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 1*plotLen + plotFrom;
            if app.DetectTabShowFitnessButton.Value == 1
                plot(app.DetectTabSignalUIAxes2,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            elseif app.DetectTabShowECGSignalButton.Value == 1
                plot(app.DetectTabSignalUIAxes2,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 2*plotLen + plotFrom;
            if app.DetectTabShowFitnessButton.Value == 1
                plot(app.DetectTabSignalUIAxes3,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            elseif app.DetectTabShowECGSignalButton.Value == 1
                plot(app.DetectTabSignalUIAxes3,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 3*plotLen + plotFrom;
            if app.DetectTabShowFitnessButton.Value == 1
                plot(app.DetectTabSignalUIAxes4,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            elseif app.DetectTabShowECGSignalButton.Value == 1
                plot(app.DetectTabSignalUIAxes4,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 4*plotLen + plotFrom;
            if app.DetectTabShowFitnessButton.Value == 1
                plot(app.DetectTabSignalUIAxes5,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            elseif app.DetectTabShowECGSignalButton.Value == 1
                plot(app.DetectTabSignalUIAxes5,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, sigVal(plotIdx:plotIdx+plotLen-1),...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, fitVal(plotIdx:plotIdx+plotLen-1), 'y-',...
                    fitThrIdx(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1)/app.sigFs, fitThr(plotIdx<=fitThrIdx&fitThrIdx<=plotIdx+plotLen-1), 'g-',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, fitVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'b.',...
                    rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rIdx(plotIdx<=rIdx&rIdx<=plotIdx+plotLen-1)), 'r.',...
                    fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(fIdx(plotIdx<=fIdx&fIdx<=plotIdx+plotLen-1)), 'rx',...
                    rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)/app.sigFs, sigVal(rExIdx(plotIdx<=rExIdx&rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
        end

        function verifyPlot(app)
            plotFrom = app.sigFs*app.VerifyTabSignalEditField.Value+1;
            plotLen = ceil(app.sigFs*app.VerifyTabDensityEditField.Value/5);
            point = app.VerifyTabAdjustPointEditField.Value;
            plotIdx = 0*plotLen + plotFrom;
            if ismember(point, plotIdx:plotIdx+plotLen-1)
                plot(app.VerifyTabSignalUIAxes1,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro', ...
                    point/app.sigFs, app.sig(point), 'g.');
            else
                plot(app.VerifyTabSignalUIAxes1,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 1*plotLen + plotFrom;
            if ismember(point, plotIdx:plotIdx+plotLen-1)
                plot(app.VerifyTabSignalUIAxes2,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro', ...
                    point/app.sigFs, app.sig(point), 'g.');
            else
                plot(app.VerifyTabSignalUIAxes2,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 2*plotLen + plotFrom;
            if ismember(point, plotIdx:plotIdx+plotLen-1)
                plot(app.VerifyTabSignalUIAxes3,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro', ...
                    point/app.sigFs, app.sig(point), 'g.');
            else
                plot(app.VerifyTabSignalUIAxes3,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 3*plotLen + plotFrom;
            if ismember(point, plotIdx:plotIdx+plotLen-1)
                plot(app.VerifyTabSignalUIAxes4,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro', ...
                    point/app.sigFs, app.sig(point), 'g.');
            else
                plot(app.VerifyTabSignalUIAxes4,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
            plotIdx = 4*plotLen + plotFrom;
            if ismember(point, plotIdx:plotIdx+plotLen-1)
                plot(app.VerifyTabSignalUIAxes5,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro', ...
                    point/app.sigFs, app.sig(point), 'g.');
            else
                plot(app.VerifyTabSignalUIAxes5,...
                    (plotIdx:plotIdx+plotLen-1)/app.sigFs, app.sig(plotIdx:plotIdx+plotLen-1),...
                    app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rIdx(plotIdx<=app.rIdx&app.rIdx<=plotIdx+plotLen-1)), 'r.',...
                    app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.fIdx(plotIdx<=app.fIdx&app.fIdx<=plotIdx+plotLen-1)), 'rx',...
                    app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)/app.sigFs, app.sig(app.rExIdx(plotIdx<=app.rExIdx&app.rExIdx<=plotIdx+plotLen-1)), 'ro');
            end
        end
        
        function verifyAdjPlot(app)
            point = app.VerifyTabAdjustPointEditField.Value;
            prMaxW = ceil(app.predetectPRMaxWidth*app.sigFs);
            rtMaxW = ceil(app.predetectRTMaxWidth*app.sigFs);
            if ismember(point, app.fIdx)
                pointType = "rx";
                app.VerifyTabAdjustPointDefinitionEditField.Value = "Abnormal";
                app.VerifyTabRWaveButton.Value = 0;
                app.VerifyTabSemiRWaveButton.Value = 0;
                app.VerifyTabAbnormalButton.Value = 1;
                app.VerifyTabNoWaveButton.Value = 0;
            elseif ismember(point, app.rExIdx)
                pointType = "ro";
                app.VerifyTabAdjustPointDefinitionEditField.Value = "Semi-R Wave";
                app.VerifyTabRWaveButton.Value = 0;
                app.VerifyTabSemiRWaveButton.Value = 1;
                app.VerifyTabAbnormalButton.Value = 0;
                app.VerifyTabNoWaveButton.Value = 0;
            elseif ismember(point, app.rIdx)
                pointType = "r.";
                app.VerifyTabAdjustPointDefinitionEditField.Value = "R Wave";
                app.VerifyTabRWaveButton.Value = 1;
                app.VerifyTabSemiRWaveButton.Value = 0;
                app.VerifyTabAbnormalButton.Value = 0;
                app.VerifyTabNoWaveButton.Value = 0;
            else
                pointType = "g.";
                app.VerifyTabAdjustPointDefinitionEditField.Value = "No Wave";
                app.VerifyTabRWaveButton.Value = 0;
                app.VerifyTabSemiRWaveButton.Value = 0;
                app.VerifyTabAbnormalButton.Value = 0;
                app.VerifyTabNoWaveButton.Value = 1;
            end
            if point-prMaxW>=1 && point+rtMaxW <= app.sigLen
                plot(app.VerifyTabAdjustUIAxes, ...
                    (point-prMaxW:point+rtMaxW)./app.sigFs, ...
                    app.sig(point-prMaxW:point+rtMaxW), ...
                    point/app.sigFs, app.sig(point),pointType)
            elseif point-prMaxW < 1
                plot(app.VerifyTabAdjustUIAxes, ...
                    (point-prMaxW:point+rtMaxW)./app.sigFs, ...
                    [zeros(1,prMaxW-point+1) app.sig(1:point+rtMaxW)], ...
                    point/app.sigFs, app.sig(point),pointType)
            elseif point+rtMaxW > app.sigLen
                plot(app.VerifyTabAdjustUIAxes, ...
                    (point-prMaxW:point+rtMaxW)./app.sigFs, ...
                    [app.sig(point-prMaxW:app.sigLen) zeros(1,rtMaxW-app.sigLen+point+1) ], ...
                    point/app.sigFs, app.sig(point),pointType)
            end
        end

        function verifyCalculateHRV(app)
            start_time = app.VerifyTabSignalEditField.Value*app.sigFs;
            end_time = start_time + app.VerifyTabDensityEditField.Value*app.sigFs;
            rIdx = app.rIdx(start_time<=app.rIdx&app.rIdx<=end_time)*1000/app.sigFs;
            rExIdx = app.rExIdx(start_time<=app.rExIdx&app.rExIdx<=end_time)*1000/app.sigFs;
            rrItv = [];
            j = 1;
            if_delete = 0;
            for i = 1:length(rIdx)
                if j <= length(rExIdx) && rIdx(i) > rExIdx(j)
                    rrItv = [rrItv rIdx(i)-rExIdx(j)]; %#ok<AGROW>
                    j = j+1;
                elseif i > 1
                    rrItv = [rrItv rIdx(i)-rIdx(i-1)]; %#ok<AGROW>
                else
                    if_delete = 1;
                end
            end
            if if_delete
                rIdx(1) = [];
            end
            hrvSDNN = std(rrItv);
            rrItvRes = resample(rrItv/1000, rIdx, 20);
            [rrItvResPSD, rrItvResF] = pwelch(rrItvRes,[],[],2^nextpow2(length(rrItvRes)),20,'power');
            hrvLF = bandpower(rrItvResPSD, rrItvResF, [0.04 0.15], 'psd');
            hrvHF = bandpower(rrItvResPSD, rrItvResF, [0.15 0.4], 'psd');
            hrvLF_HF = hrvLF/hrvHF;
            app.SDNNEditField.Value = hrvSDNN;
            app.HFEditField.Value = hrvHF;
            app.HFLFRatioEditField.Value = hrvLF_HF;
        end

        function verifySaveResult(app)
            varNames = {'StartTime', 'EndTime', 'rIdx', 'rExIdx', 'TotalBeats', 'MeanRR', 'MaxRR', 'MinRR', 'SDNN', 'SDSD', 'TriangleIdx', 'pNN50', 'RMSSD', 'TP', 'VLF', 'LF', 'HF', 'LF_HF'};
            varTypes = {'double', 'double', 'string', 'string', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double', 'double'};
            result = table('Size',[1,18], 'VariableTypes', varTypes, 'VariableNames',varNames);
            start_time = app.VerifyTabSignalEditField.Value*app.sigFs;
            end_time = start_time + app.VerifyTabDensityEditField.Value*app.sigFs;
            rIdx = app.rIdx(start_time<=app.rIdx&app.rIdx<=end_time)*1000/app.sigFs; % ms
            rExIdx = app.rExIdx(start_time<=app.rExIdx&app.rExIdx<=end_time)*1000/app.sigFs; % ms
            rIdx = unique(rIdx);
            rExIdx = unique(rExIdx);
            rrItv = []; % ms
            j = 1;
            if_delete = 0;
            for i = 1:length(rIdx)
                if j <= length(rExIdx) && rIdx(i) > rExIdx(j)
                    rrItv = [rrItv rIdx(i)-rExIdx(j)]; %#ok<AGROW>
                    j = j+1;
                elseif i > 1
                    rrItv = [rrItv rIdx(i)-rIdx(i-1)]; %#ok<AGROW>
                else
                    if_delete = 1;
                end
            end
            if if_delete
                rIdx(1) = [];
            end
            rrItvDiff = diff(rrItv); % ms
            NN50 = 0; % (ms)
            for i = 1:length(rrItvDiff)
                if (abs(rrItvDiff(i)) > 50)
                    NN50 = NN50 + 1;
                end
            end
            [N, ~] = histcounts(rrItv,'BinWidth',1000/128);
            result.StartTime = start_time;
            result.EndTime = end_time;
            result.rIdx = strcat(num2str(rIdx));
            if length(rExIdx) >= 2
                result.rExIdx = strcat(num2str(rExIdx));
            elseif length(rExIdx) == 1
                result.rExIdx = num2str(rExIdx);
            end
            result.TotalBeats = length(rIdx) + length(rExIdx);
            result.MeanRR = mean(rrItv);
            result.MaxRR = max(rrItv);
            result.MinRR = min(rrItv);
            result.SDNN = std(rrItv*1000); % ms
            result.SDSD = std(diff(rrItv*1000));
            result.RMSSD = sqrt(mean((rrItv*1000).^2));
            result.TriangleIdx = length(rrItv)/max(N);
            result.pNN50 = NN50*100/length(rrItvDiff); % (percent)
            rrItvRes = resample(rrItv, rIdx, 20);
            [rrItvResPSD, rrItvResF] = pwelch(rrItvRes,[],[],2^nextpow2(length(rrItvRes)),20,'power');
            result.TP = sum(rrItvResPSD);
            result.VLF = bandpower(rrItvResPSD, rrItvResF, [0.0033 0.04], 'psd');
            result.LF = bandpower(rrItvResPSD, rrItvResF, [0.04 0.15], 'psd');
            result.HF = bandpower(rrItvResPSD, rrItvResF, [0.15 0.4], 'psd');
            result.LF_HF = result.LF/result.HF;
            app.result = [app.result; result];
        end

        function outputPlot(app)
            page = app.OutputTabPageEditField.Value;
            result = app.result(page,:);
            app.OutputTabTotalBeatsEditField.Value = result.TotalBeats;
            app.OutputTabMeanRREditField.Value = result.MeanRR;
            app.OutputTabMaxRREditField.Value = result.MaxRR;
            app.OutputTabMinRREditField.Value = result.MinRR;
            app.OutputTabTPEditField.Value = result.TP;
            app.OutputTabLFEditField.Value = result.LF;
            app.OutputTabVLFEditField.Value = result.VLF;
            app.OutputTabLFHFEditField.Value = result.LF_HF;
            app.OutputTabSDNNEditField.Value = result.SDNN;
            app.OutputTabSDSDEditField.Value = result.SDSD;
            app.OutputTabTriangleIdxEditField.Value = result.TriangleIdx;
            app.OutputTabPNN50EditField.Value = result.pNN50;
            app.OutputTabSignalEditField.Value = result.StartTime/app.sigFs;
            app.OutputTabDensityEditField.Value = (result.EndTime-result.StartTime)/app.sigFs;
            rIdx = str2double(split(result.rIdx))';
            rExIdx = str2double(split(result.rExIdx))';
            rrItv = []; % ms
            j = 1;
            if_delete = 0;
            for i = 1:length(rIdx)
                if j <= length(rExIdx) && rIdx(i) > rExIdx(j)
                    rrItv = [rrItv rIdx(i)-rExIdx(j)]; %#ok<AGROW>
                    j = j+1;
                elseif i > 1
                    rrItv = [rrItv rIdx(i)-rIdx(i-1)]; %#ok<AGROW>
                else
                    if_delete = 1;
                end
            end
            if if_delete
                rIdx(1) = [];
            end
            bar(app.OutputTabSignalRRAxes, rIdx, rrItv);
            rrItvDiff = diff(rrItv);
            bar(app.OutputTabSignalHRVAxes, rIdx(2:end), rrItvDiff);
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.HRVAnalyserMainGUI.Name = "HRV Analyser V-1.1";
        end

        % Menu selected function: FromMindraycsvfileMenu
        function FromMindraycsvfileMenuSelected(app, event)
            [file, path] = uigetfile("*.CSV*;*.csv");
            app.fileExt = ".csv";
            app.fileName = file;
            app.filePath = path;
            sig = readmatrix(sprintf("%s%s",app.filePath,app.fileName));
            sig = sig((1:end),(2:end));
            sig = sig';
            sig = sig(:);
            app.sig = sig'; %#ok<*ADPROPLC>
            app.sigOrigin = app.sig;
            app.sigLen = length(sig);
            table = readtable(sprintf("%s%s",app.filePath,app.fileName));
            cell = table2cell(table(:,1));
            app.sigTimeIdx = cell2mat(cellfun(@(x) sprintf('%s\t',x), cell, 'UniformOutput',false));
            sigDiff = diff(app.sig);      % Difference of ECG signal
            sigDiffLen = length(sigDiff); % Length of difference of ECG signal
            app.sigMaxIdx = find(sigDiff(1:sigDiffLen-1).*sigDiff(2:sigDiffLen)<0 & sigDiff(1:sigDiffLen-1)>0)+1; % Indices of maximums of ECG signal
            app.startPlot()
        end

        % Menu selected function: FromTMEtxtfileMenu
        function FromTMEtxtfileMenuSelected(app, event)
            [file, path] = uigetfile("*.TXT*;*.txt");
            app.fileExt = ".txt";
            app.fileName = file;
            app.filePath = path;
            sig = readmatrix(sprintf("%s%s",app.filePath,app.fileName));
            sig = sig((1:end),3);
            sig = sig';
            sig = sig(:);
            app.sig = sig'; %#ok<*ADPROPLC>
            app.sigOrigin = app.sig;
            app.sigLen = length(sig);
            table = readtable(sprintf("%s%s",app.filePath,app.fileName));
            cell = table2cell(table(:,2));
            app.sigTimeIdx = cell2mat(cellfun(@(x) sprintf('%s\t',x), cell, 'UniformOutput',false));
            sigDiff = diff(app.sig);      % Difference of ECG signal
            sigDiffLen = length(sigDiff); % Length of difference of ECG signal
            app.sigMaxIdx = find(sigDiff(1:sigDiffLen-1).*sigDiff(2:sigDiffLen)<0 & sigDiff(1:sigDiffLen-1)>0)+1; % Indices of maximums of ECG signal
            app.startPlot()
        end

        % Button pushed function: StartTabSignalAdd1min
        function StartTabSignalAdd1minButtonPushed(app, event)
            plotLen = app.StartTabDensityEditField.Value;
            value = app.StartTabSignalEditField.Value;
            value = min(value+60, app.sigLen/app.sigFs-plotLen);
            app.StartTabSignalEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabSignalAdd5min
        function StartTabSignalAdd5minButtonPushed(app, event)
            plotLen = app.StartTabDensityEditField.Value;
            value = app.StartTabSignalEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs-plotLen);
            app.StartTabSignalEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabSignalSubtract1min
        function StartTabSignalSubtract1minButtonPushed(app, event)
            value = app.StartTabSignalEditField.Value;
            value = max(value-60, 0);
            app.StartTabSignalEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabSignalSubtract5min
        function StartTabSignalSubtract5minButtonPushed(app, event)
            value = app.StartTabSignalEditField.Value;
            value = max(value-300, 0);
            app.StartTabSignalEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabDensityAdd5s
        function StartTabDensityAdd5sButtonPushed(app, event)
            value = app.StartTabDensityEditField.Value;
            value = min(value+5, app.sigLen/app.sigFs);
            app.StartTabDensityEditField.Value = value;
            if app.sigLen/app.sigFs - app.StartTabSignalEditField.Value < value
                app.StartTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabDensityAdd30s
        function StartTabDensityAdd30sButtonPushed(app, event)
            value = app.StartTabDensityEditField.Value;
            value = min(value+30, app.sigLen/app.sigFs);
            app.StartTabDensityEditField.Value = value;
            if app.sigLen/app.sigFs - app.StartTabSignalEditField.Value < value
                app.StartTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabDensitySubtract5s
        function StartTabDensitySubtract5sButtonPushed(app, event)
            value = app.StartTabDensityEditField.Value;
            value = max(value-5, 5);
            app.StartTabDensityEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabDensitySubtract30s
        function StartTabDensitySubtract30sButtonPushed(app, event)
            value = app.StartTabDensityEditField.Value;
            value = max(value-30, 5);
            app.StartTabDensityEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabPlotSignalButton
        function StartTabPlotSignalButtonPushed(app, event)
            app.startPlot()
        end

        % Value changed function: StartTabDensityEditField
        function StartTabDensityEditFieldValueChanged(app, event)
            value = app.StartTabDensityEditField.Value;
            if app.sigLen/app.sigFs - app.StartTabSignalEditField.Value < value
                app.StartTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Value changed function: StartTabSignalEditField
        function StartTabSignalEditFieldValueChanged(app, event)
            plotLen = app.StartTabDensityEditField.Value;
            value = app.StartTabSignalEditField.Value;
            value = min(value, app.sigLen/app.sigFs-plotLen);
            app.StartTabSignalEditField.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Button pushed function: StartTabCutSignalButton
        function StartTabCutSignalButtonPushed(app, event)
            value = app.StartTabSignalEditField.Value * app.sigFs;
            app.sigTimeIdx = app.sigTimeIdx(value+1:end);
            app.sig = app.sig(value+1:end);
            app.sigOrigin = app.sigOrigin(value+1:end);
            app.sigLen = length(app.sig);
            sigDiff = diff(app.sig);      % Difference of ECG signal
            sigDiffLen = length(sigDiff); % Length of difference of ECG signal
            app.sigMaxIdx = find(sigDiff(1:sigDiffLen-1).*sigDiff(2:sigDiffLen)<0 & sigDiff(1:sigDiffLen-1)>0)+1; % Indices of maximums of ECG signal
            app.StartTabSignalEditField.Value = 0;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Value changed function: StartTabTFrequencySpinner
        function StartTabTFrequencySpinnerValueChanged(app, event)
            value = app.StartTabTFrequencySpinner.Value;
            app.sigFs = value;
            app.OutputTabTFrequencySpinner.Value = value;
            if app.StartTabPlotAutoCheckBox.Value == 1
                app.startPlot()
            end
        end

        % Value changing function: FilterTabLowPassSlider
        function FilterTabLowPassSliderValueChanging(app, event)
            changingValue = event.Value;
            app.FilterTabLowPassSpinner.Value = changingValue;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabLowPassSpinner
        function FilterTabLowPassSpinnerValueChanged(app, event)
            value = app.FilterTabLowPassSpinner.Value;
            app.FilterTabHighPassSlider.Value = value;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabPlotAutoCheckBox
        function FilterTabPlotAutoCheckBoxValueChanged(app, event)
            value = app.FilterTabPlotAutoCheckBox.Value;
            if value == 1
                app.FilterTabPlotAutoButton_Window.Enable = "on";
                app.FilterTabPlotAutoButton_All.Enable = "on";
                if app.FilterTabPlotAutoCheckBox.Value == 1 && app.FilterTabPlotAutoButton_Window == 1
                    app.filterPlot()
                end
            elseif value == 0
                app.FilterTabPlotAutoButton_Window.Enable = "off";
                app.FilterTabPlotAutoButton_All.Enable = "off";
            end
        end

        % Button pushed function: FilterTabPlotSignalButton
        function FilterTabPlotSignalButtonPushed(app, event)
            app.filterPlot()
        end

        % Value changed function: FilterTabLowPassOrderSpinner
        function FilterTabLowPassOrderSpinnerValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabHighPassOrderSpinner
        function FilterTabHighPassOrderSpinnerValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabLowPassSlider
        function FilterTabLowPassSliderValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabHighPassSlider
        function FilterTabHighPassSliderValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabLowPassCheckBox
        function FilterTabLowPassCheckBoxValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabHighPassCheckBox
        function FilterTabHighPassCheckBoxValueChanged(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabPlotFilterWindowButton
        function FilterTabPlotFilterWindowButtonPushed(app, event)
            app.filterPlot("applyWindow")
        end

        % Value changing function: FilterTabHighPassSlider
        function FilterTabHighPassSliderValueChanging(app, event)
            value = event.Value;
            if 0 <= value && value < 2
                adjustedValue = value/200;
            elseif 2 <= value && value < 4
                adjustedValue = value*0.09/2-0.08;
            elseif 4 <= value && value < 6
                adjustedValue = value/5-0.7;
            elseif 6 <= value && value < 8
                adjustedValue = value/4-1;
            elseif 8 <= value && value < 26
                adjustedValue = value/2-3;
            elseif 26 <= value && value <= 30
                adjustedValue = value*5-120;
            end
            app.FilterTabHighPassSpinner.Value = adjustedValue;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button down function: FilterTab
        function FilterTabButtonDown(app, event)
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabPlotFilterAllButton
        function FilterTabPlotFilterAllButtonPushed(app, event)
            app.filterPlot("applyAll")
        end

        % Value changed function: FilterTabHighPassSpinner
        function FilterTabHighPassSpinnerValueChanged(app, event)
            value = app.FilterTabHighPassSpinner.Value;
            if 0 <= value && value < 0.01
                adjustedValue = value*200;
            elseif 0.01 <= value && value < 0.1
                adjustedValue = value*2/0.09+2-2/9;
            elseif 0.1 <= value && value < 0.5
                adjustedValue = value*5+3.5;
            elseif 0.5 <= value && value < 1
                adjustedValue = value*4+4;
            elseif 1 <= value && value < 10
                adjustedValue = value*2+6;
            elseif 10 <= value && value <= 30
                adjustedValue = value/5+24;
            end
            app.FilterTabHighPassSlider.Value = adjustedValue;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabSignalAdd5min
        function FilterTabSignalAdd5minButtonPushed(app, event)
            value = app.FilterTabSignalEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs-300);
            app.FilterTabSignalEditField.Value = value;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabSignalAdd10s
        function FilterTabSignalAdd10sButtonPushed(app, event)
            value = app.FilterTabSignalEditField.Value;
            value = min(value+10, app.sigLen/app.sigFs-300);
            app.FilterTabSignalEditField.Value = value;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabSignalSubtract10s
        function FilterTabSignalSubtract10sButtonPushed(app, event)
            value = app.FilterTabSignalEditField.Value;
            value = max(value-10, 0);
            app.FilterTabSignalEditField.Value = value;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Button pushed function: FilterTabSignalSubtract5min
        function FilterTabSignalSubtract5minButtonPushed(app, event)
            value = app.FilterTabSignalEditField.Value;
            value = max(value-300, 0);
            app.FilterTabSignalEditField.Value = value;
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changed function: FilterTabSignalEditField
        function FilterTabSignalEditFieldValueChanged(app, event)
            value = app.FilterTabSignalEditField.Value;
            if app.sigLen/app.sigFs - app.FilterTabSignalEditField.Value < value
                app.FilterTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.FilterTabPlotAutoCheckBox.Value == 1
                app.filterPlot()
            end
        end

        % Value changing function: PredetectTabVoltageSlider
        function PredetectTabVoltageSliderValueChanging(app, event)
            value = event.Value;
            app.PredetectTabVoltageSpinner.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectPlot()
            end
        end

        % Value changing function: PredetectTabSlopeSlider
        function PredetectTabSlopeSliderValueChanging(app, event)
            value = event.Value;
            app.PredetectTabSlopeSpinner.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectPlot()
            end
        end

        % Value changing function: PredetectTabVoltageSpinner
        function PredetectTabVoltageSpinnerValueChanging(app, event)
            value = event.Value;
            app.PredetectTabVoltageSlider.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectPlot()
            end
        end

        % Value changing function: PredetectTabSlopeSpinner
        function PredetectTabSlopeSpinnerValueChanging(app, event)
            value = event.Value;
            app.PredetectTabSlopeSlider.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectPlot()
            end
        end

        % Button down function: PredetectTab
        function PredetectTabButtonDown(app, event)
            app.filterApply("applyAll")
            if app.predetectPeakIndex == -1
                app.predetectInitialize()
                app.predetectAutoThresholdVoltage()
                app.predetectAutoThresholdSlope()
            else
                app.predetectInitialize()
            end
            app.predetectApply()
            app.predetectPlot()
        end

        % Button pushed function: PredetectTabSignalAdd1min
        function PredetectTabSignalAdd1minButtonPushed(app, event)
            plotLen = 300;
            value = app.PredetectTabSignalEditField.Value;
            value = min(value+60, app.sigLen/app.sigFs-plotLen);
            app.PredetectTabSignalEditField.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectInitialize()
                app.predetectPlot()
            end
        end

        % Button pushed function: PredetectTabSignalAdd5min
        function PredetectTabSignalAdd5minButtonPushed(app, event)
            plotLen = 300;
            value = app.PredetectTabSignalEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs-plotLen);
            app.PredetectTabSignalEditField.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectInitialize()
                app.predetectPlot()
            end
        end

        % Button pushed function: PredetectTabSignalSubtract1min
        function PredetectTabSignalSubtract1minButtonPushed(app, event)
            value = app.PredetectTabSignalEditField.Value;
            value = max(value-60, 0);
            app.PredetectTabSignalEditField.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectInitialize()
                app.predetectPlot()
            end
        end

        % Button pushed function: PredetectTabSignalSubtract5min
        function PredetectTabSignalSubtract5minButtonPushed(app, event)
            value = app.PredetectTabSignalEditField.Value;
            value = max(value-300, 0);
            app.PredetectTabSignalEditField.Value = value;
            if app.PredetectTabPlotAutoCheckBox.Value == 1
                app.predetectInitialize()
                app.predetectPlot()
            end
        end

        % Button pushed function: PredetectTabSlopeAutoButton
        function PredetectTabSlopeAutoButtonPushed(app, event)
            app.predetectAutoThresholdSlope()
            app.predetectPlot()
        end

        % Button pushed function: PredetectTabVoltageAutoButton
        function PredetectTabVoltageAutoButtonPushed(app, event)
            app.predetectAutoThresholdVoltage()
            app.predetectPlot()
        end

        % Value changed function: PredetectTabRangeSpinner
        function PredetectTabRangeSpinnerValueChanged(app, event)
            value = app.PredetectTabRangeSpinner.Value;
            app.predetectTemplateLen = value;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustAdd1Point
        function PredetectTabAdjustAdd1PointButtonPushed(app, event)
            app.predetectShift = app.predetectShift + 1;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustSubtract1Point
        function PredetectTabAdjustSubtract1PointButtonPushed(app, event)
            app.predetectShift = app.predetectShift - 1;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustSubtract5Point
        function PredetectTabAdjustSubtract5PointButtonPushed(app, event)
            app.predetectShift = app.predetectShift - 5;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustAdd5Point
        function PredetectTabAdjustAdd5PointButtonPushed(app, event)
            app.predetectShift = app.predetectShift + 5;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustSubtract20point
        function PredetectTabAdjustSubtract20pointButtonPushed(app, event)
            app.predetectShift = app.predetectShift - 20;
            app.predetectAdjPlot()
        end

        % Button pushed function: PredetectTabAdjustAdd20point
        function PredetectTabAdjustAdd20pointButtonPushed(app, event)
            app.predetectShift = app.predetectShift + 20;
            app.predetectAdjPlot()
        end

        % Value changed function: PredetectTabVoltageAutoCheckBox
        function PredetectTabVoltageAutoCheckBoxValueChanged(app, event)
            value = app.PredetectTabVoltageAutoCheckBox.Value;
            if value == 1
                app.predetectAutoThresholdVoltage()
            end
        end

        % Value changed function: PredetectTabSlopeAutoCheckBox
        function PredetectTabSlopeAutoCheckBoxValueChanged(app, event)
            value = app.PredetectTabSlopeAutoCheckBox.Value;
            if value == 1
                app.predetectAutoThresholdSlope()
            end
        end

        % Button down function: DetectTab
        function DetectTabButtonDown(app, event)
            app.DetectTabSignalPreviewEditField.Value = 300;
            if app.detectPeakIndex == -1
                app.detectInitialize()
                app.detectAutoThresholdFit()
                app.detectAutoThresholdSlope()
            else
                app.detectInitialize()
            end
            app.detectPlot()
        end

        % Value changing function: DetectTabFitSlider
        function DetectTabFitSliderValueChanging(app, event)
            changingValue = event.Value;
            app.DetectTabFitSpinner.Value = changingValue;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Value changing function: DetectTabFitSlopeSlider
        function DetectTabFitSlopeSliderValueChanging(app, event)
            changingValue = event.Value;
            app.DetectTabFitSlopeSpinner.Value = changingValue;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Value changing function: DetectTabFitSpinner
        function DetectTabFitSpinnerValueChanging(app, event)
            changingValue = event.Value;
            app.DetectTabFitSlider.Value = changingValue;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Value changing function: DetectTabFitSlopeSpinner
        function DetectTabFitSlopeSpinnerValueChanging(app, event)
            changingValue = event.Value;
            app.DetectTabFitSlopeSlider.Value = changingValue;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Button pushed function: DetectTabLearningRateAutoButton
        function DetectTabLearningRateAutoButtonPushed(app, event)
            app.DetectTabLearningRateSpinner.Value = app.detectLearnRatio;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Selection changed function: DetectTabShowButtonGroup
        function DetectTabShowButtonGroupSelectionChanged(app, event)
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabFitAutoButton
        function DetectTabFitAutoButtonPushed(app, event)
            thrFit = app.detectAutoThrFit;
            app.DetectTabFitSpinner.Value = thrFit*100/app.detectPeakValMax;
            app.DetectTabFitSlider.Value = thrFit*100/app.detectPeakValMax;
            app.detectPlot()
        end

        % Button pushed function: DetectTabFitSlopeAutoButton
        function DetectTabFitSlopeAutoButtonPushed(app, event)
            thrFitSlp = app.detectAutoThrFitSlp;
            app.DetectTabFitSlopeSpinner.Value = thrFitSlp*100/app.detectThroughSlpMax;
            app.DetectTabFitSlopeSlider.Value = thrFitSlp*100/app.detectThroughSlpMax;
            app.detectPlot()
        end

        % Button pushed function: DetectTabConfirmButton
        function DetectTabConfirmButtonPushed(app, event)
            app.detectPlot()
        end

        % Button pushed function: DetectTabSignalAdd5min
        function DetectTabSignalAdd5minButtonPushed(app, event)
            value = app.DetectTabSignalEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs);
            value = min(value, app.DetectTabSignalPreviewEditField.Value-300);
            value = max(value, 0);
            app.DetectTabSignalEditField.Value= value;
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabSignalAdd1min
        function DetectTabSignalAdd1minButtonPushed(app, event)
            value = app.DetectTabSignalEditField.Value;
            value = min(value+60, app.sigLen/app.sigFs);
            value = min(value, app.DetectTabSignalPreviewEditField.Value-300);
            value = max(value, 0);
            app.DetectTabSignalEditField.Value = value;
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabSignalSubtract1min
        function DetectTabSignalSubtract1minButtonPushed(app, event)
            value = app.DetectTabSignalEditField.Value;
            value = max(value-60, 0);
            app.DetectTabSignalEditField.Value = value;
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabSignalSubtract5min
        function DetectTabSignalSubtract5minButtonPushed(app, event)
            value = app.DetectTabSignalEditField.Value;
            value = max(value-300, 0);
            app.DetectTabSignalEditField.Value = value;
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabSignalPreviewAdd5min
        function DetectTabSignalPreviewAdd5minButtonPushed(app, event)
            value = app.DetectTabSignalPreviewEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs);
            app.DetectTabSignalPreviewEditField.Value = value;
            if value > 300
                app.DetectTabPlotAutoCheckBox.Value = 0;
            end
            app.detectPlot("changeShow")
        end

        % Button pushed function: DetectTabSignalPreviewSubtract5min
        function DetectTabSignalPreviewSubtract5minButtonPushed(app, event)
            value = app.DetectTabSignalPreviewEditField.Value;
            value = max(value-300, 300);
            app.DetectTabSignalPreviewEditField.Value = value;
            if value > 300
                app.DetectTabPlotAutoCheckBox.Value = 0;
                app.DetectTabPlotAutoCheckBox.Enable = 0;
            else
                app.DetectTabPlotAutoCheckBox.Enable = 1;
            end
            if value-app.DetectTabSignalEditField.Value<300
                app.DetectTabSignalEditField.Value = max(0, value-300);
            end
            app.detectPlot("changeShow")
        end

        % Value changed function: DetectTabSignalPreviewEditField
        function DetectTabSignalPreviewEditFieldValueChanged(app, event)
            value = app.DetectTabSignalPreviewEditField.Value;
            app.DetectTabSignalPreviewEditField.Value = max(value, 300);
        end

        % Button pushed function: DetectAllButton
        function DetectAllButtonPushed(app, event)
            app.DetectTabSignalPreviewEditField.Value = app.sigLen/app.sigFs;
            app.detectPlot("applyAll")
        end

        % Button pushed function: DetectTabPlotSignalButton
        function DetectTabPlotSignalButtonPushed(app, event)
            app.detectPlot()
        end

        % Value changed function: DetectTabLearningRateSpinner
        function DetectTabLearningRateSpinnerValueChanged(app, event)
            value = app.DetectTabLearningRateSpinner.Value;
            app.detectLearnRatio = value;
            if app.DetectTabPlotAutoCheckBox.Value == 1
                app.detectPlot()
            end
        end

        % Button pushed function: VerifyTabSignalAdd5min
        function VerifyTabSignalAdd5minButtonPushed(app, event)
            plotLen = app.VerifyTabDensityEditField.Value;
            value = app.VerifyTabSignalEditField.Value;
            value = min(value+300, app.sigLen/app.sigFs-plotLen);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabSignalAdd1min
        function VerifyTabSignalAdd1minButtonPushed(app, event)
            plotLen = app.VerifyTabDensityEditField.Value;
            value = app.VerifyTabSignalEditField.Value;
            value = min(value+60, app.sigLen/app.sigFs-plotLen);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabSignalSubtract1min
        function VerifyTabSignalSubtract1minButtonPushed(app, event)
            value = app.VerifyTabSignalEditField.Value;
            value = max(value-60, 0);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabSignalSubtract5min
        function VerifyTabSignalSubtract5minButtonPushed(app, event)
            value = app.VerifyTabSignalEditField.Value;
            value = max(value-300, 0);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Value changed function: VerifyTabSignalEditField
        function VerifyTabSignalEditFieldValueChanged(app, event)
            plotLen = app.VerifyTabDensityEditField.Value;
            value = app.VerifyTabSignalEditField.Value;
            value = min(value, app.sigLen/app.sigFs-plotLen);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabDensityAdd30s
        function VerifyTabDensityAdd30sButtonPushed(app, event)
            value = app.VerifyTabDensityEditField.Value;
            value = min(value+30, app.sigLen/app.sigFs);
            app.VerifyTabDensityEditField.Value = value;
            if app.sigLen/app.sigFs - app.VerifyTabSignalEditField.Value < value
                app.VerifyTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabDensityAdd5s
        function VerifyTabDensityAdd5sButtonPushed(app, event)
            value = app.VerifyTabDensityEditField.Value;
            value = min(value+5, app.sigLen/app.sigFs);
            app.VerifyTabDensityEditField.Value = value;
            if app.sigLen/app.sigFs - app.VerifyTabSignalEditField.Value < value
                app.VerifyTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifytTabDensitySubtract5s
        function VerifytTabDensitySubtract5sButtonPushed(app, event)
            value = app.VerifyTabDensityEditField.Value;
            value = max(value-5, 5);
            app.VerifyTabDensityEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabDensitySubtract30s
        function VerifyTabDensitySubtract30sButtonPushed(app, event)
            value = app.VerifyTabDensityEditField.Value;
            value = max(value-30, 5);
            app.VerifyTabDensityEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Value changed function: VerifyTabDensityEditField
        function VerifyTabDensityEditFieldValueChanged(app, event)
            value = app.VerifyTabDensityEditField.Value;
            if app.sigLen/app.sigFs - app.VerifyTabSignalEditField.Value < value
                app.VerifyTabSignalEditField.Value = max(0, app.sigLen/app.sigFs-value);
            end
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabPlotSignalButton
        function VerifyTabPlotSignalButtonPushed(app, event)
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Button down function: VerifyTabSignalUIAxes1
        function VerifyTabSignalUIAxes1ButtonDown(app, event)
            point = get(app.VerifyTabSignalUIAxes1,'currentpoint');
            point = double(int64(point(1,1)*app.sigFs));
            app.VerifyTabAdjustPointEditField.Value = point;
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button down function: VerifyTabSignalUIAxes2
        function VerifyTabSignalUIAxes2ButtonDown(app, event)
            point = get(app.VerifyTabSignalUIAxes2,'currentpoint');
            point = double(int64(point(1,1)*app.sigFs));
            app.VerifyTabAdjustPointEditField.Value = point;
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button down function: VerifyTabSignalUIAxes3
        function VerifyTabSignalUIAxes3ButtonDown(app, event)
            point = get(app.VerifyTabSignalUIAxes3,'currentpoint');
            point = double(int64(point(1,1)*app.sigFs));
            app.VerifyTabAdjustPointEditField.Value = point;
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button down function: VerifyTabSignalUIAxes4
        function VerifyTabSignalUIAxes4ButtonDown(app, event)
            point = get(app.VerifyTabSignalUIAxes4,'currentpoint');
            point = double(int64(point(1,1)*app.sigFs));
            app.VerifyTabAdjustPointEditField.Value = point;
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button down function: VerifyTabSignalUIAxes5
        function VerifyTabSignalUIAxes5ButtonDown(app, event)
            point = get(app.VerifyTabSignalUIAxes5,'currentpoint');
            point = double(int64(point(1,1)*app.sigFs));
            app.VerifyTabAdjustPointEditField.Value = point;
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Value changed function: VerifyTabRWaveButton
        function VerifyTabRWaveButtonValueChanged(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            if app.VerifyTabAbnormalButton.Value == 1
                app.fIdx(app.fIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabSemiRWaveButton.Value == 1
                app.rExIdx(app.rExIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabRWaveButton.Value == 1
                app.rIdx(app.rIdx==point) = [];
                app.VerifyTabRWaveButton.Value = 0;
            end
            app.rIdx = sort([app.rIdx point]);
            app.verifyAdjPlot()
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Value changed function: VerifyTabSemiRWaveButton
        function VerifyTabSemiRWaveButtonValueChanged(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            if app.VerifyTabAbnormalButton.Value == 1
                app.fIdx(app.fIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabSemiRWaveButton.Value == 1
                app.rExIdx(app.rExIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabRWaveButton.Value == 1
                app.rIdx(app.rIdx==point) = [];
                app.VerifyTabRWaveButton.Value = 0;
            end
            app.rExIdx = sort([app.rExIdx point]);
            app.verifyAdjPlot()
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Value changed function: VerifyTabAbnormalButton
        function VerifyTabAbnormalButtonValueChanged(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            if app.VerifyTabAbnormalButton.Value == 1
                app.fIdx(app.fIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabSemiRWaveButton.Value == 1
                app.rExIdx(app.rExIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabRWaveButton.Value == 1
                app.rIdx(app.rIdx==point) = [];
                app.VerifyTabRWaveButton.Value = 0;
            end
            app.fIdx = sort([app.fIdx point]);
            app.verifyAdjPlot()
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Value changed function: VerifyTabNoWaveButton
        function VerifyTabNoWaveButtonValueChanged(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            if app.VerifyTabAbnormalButton.Value == 1
                app.fIdx(app.fIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabSemiRWaveButton.Value == 1
                app.rExIdx(app.rExIdx==point) = [];
                app.VerifyTabSemiRWaveButton.Value = 0;
            end
            if app.VerifyTabRWaveButton.Value == 1
                app.rIdx(app.rIdx==point) = [];
                app.VerifyTabRWaveButton.Value = 0;
            end
            app.verifyAdjPlot()
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifyTabAdjustSubtract1Point
        function VerifyTabAdjustSubtract1PointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            app.VerifyTabAdjustPointEditField.Value = max(1,point-1);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button pushed function: VerifyTabAdjustSubtract5Point
        function VerifyTabAdjustSubtract5PointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            app.VerifyTabAdjustPointEditField.Value = max(1,point-5);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button pushed function: VerifyTabAdjustAdd1Point
        function VerifyTabAdjustAdd1PointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            app.VerifyTabAdjustPointEditField.Value = min(app.sigLen,point+1);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button pushed function: VerifyTabAdjustAdd5Point
        function VerifyTabAdjustAdd5PointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            app.VerifyTabAdjustPointEditField.Value = min(app.sigLen,point+5);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button pushed function: VerifyTabAdjustLastpoint
        function VerifyTabAdjustLastpointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            rIdxRange = app.rIdx(app.rIdx<point);
            rExIdxRange = app.rExIdx(app.rExIdx<point);
            fIdxRange = app.fIdx(app.fIdx<point);
            if isempty(rIdxRange)
                rIdxRange = 1;
            end
            if isempty(rExIdxRange)
                rExIdxRange = 1;
            end
            if isempty(fIdxRange)
                fIdxRange = 1;
            end
            app.VerifyTabAdjustPointEditField.Value = max([rIdxRange(end) rExIdxRange(end) fIdxRange(end)]);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button pushed function: VerifyTabAdjustNextpoint
        function VerifyTabAdjustNextpointButtonPushed(app, event)
            point = app.VerifyTabAdjustPointEditField.Value;
            rIdxRange = app.rIdx(app.rIdx>point);
            rExIdxRange = app.rExIdx(app.rExIdx>point);
            fIdxRange = app.fIdx(app.fIdx>point);
            if isempty(rIdxRange)
                rIdxRange = app.sigLen;
            end
            if isempty(rExIdxRange)
                rExIdxRange = app.sigLen;
            end
            if isempty(fIdxRange)
                fIdxRange = app.sigLen;
            end
            app.VerifyTabAdjustPointEditField.Value = min([rIdxRange(1) rExIdxRange(1) fIdxRange(1)]);
            app.verifyAdjPlot()
            app.verifyPlot()
        end

        % Button down function: VerifyTab
        function VerifyTabButtonDown(app, event)
            app.verifyPlot()
            app.verifyCalculateHRV()
        end

        % Button pushed function: VerifySaveNextButton
        function VerifySaveNextButtonPushed(app, event)
            value = app.VerifyTabSignalEditField.Value;
            plotLen = app.VerifyTabDensityEditField.Value;
            app.verifySaveResult()
            value = min(value+plotLen, app.sigLen/app.sigFs-plotLen);
            app.VerifyTabSignalEditField.Value = value;
            if app.VerifyTabPlotAutoCheckBox.Value == 1
                app.verifyPlot()
            end
            app.verifyCalculateHRV()
        end

        % Value changed function: StartTabInfoNameEditField
        function StartTabInfoNameEditFieldValueChanged(app, event)
            value = app.StartTabInfoNameEditField.Value;
            app.infoName = value;
        end

        % Value changed function: StartTabInfoIDEditField
        function StartTabInfoIDEditFieldValueChanged(app, event)
            value = app.StartTabInfoIDEditField.Value;
            app.infoID = value;
        end

        % Value changed function: StartTabInfoDatePicker
        function StartTabInfoDatePickerValueChanged(app, event)
            value = app.StartTabInfoDatePicker.Value;
            app.infoDate = value;
        end

        % Value changed function: StartTabTimeHourSpinner
        function StartTabTimeHourSpinnerValueChanged(app, event)
            value = app.StartTabTimeHourSpinner.Value;
            app.infoTime(1) = value;
        end

        % Value changed function: StartTabTimeMinuteSpinner
        function StartTabTimeMinuteSpinnerValueChanged(app, event)
            value = app.StartTabTimeMinuteSpinner.Value;
            app.infoTime(2) = value;
        end

        % Value changed function: StartTabTimeSecondSpinner
        function StartTabTimeSecondSpinnerValueChanged(app, event)
            value = app.StartTabTimeSecondSpinner.Value;
            app.infoTime(3) = value;
        end

        % Value changed function: StartTabTimeMillisecondSpinner
        function StartTabTimeMillisecondSpinnerValueChanged(app, event)
            value = app.StartTabTimeMillisecondSpinner.Value;
            app.infoTime(4) = value;
        end

        % Value changed function: StartTabNoteTextArea
        function StartTabNoteTextAreaValueChanged(app, event)
            value = app.StartTabNoteTextArea.Value;
            app.infoNote = value;
        end

        % Button down function: OutputTab
        function OutputTabButtonDown(app, event)
            app.OutputTabInfoNameEditField.Value = app.infoName;
            app.OutputTabInfoIDEditField.Value = app.infoID;
            app.OutputTabInfoDatePicker.Value = app.infoDate;
            app.OutputTabTimeHourSpinner.Value = app.infoTime(1);
            app.OutputTabTimeMinuteSpinner.Value = app.infoTime(2);
            app.OutputTabTimeSecondSpinner.Value = app.infoTime(3);
            app.OutputTabTimeMillisecondSpinner.Value = app.infoTime(4);
            app.OutputTabNoteTextArea.Value = app.infoNote;
            app.OutputTabTFrequencySpinner.Value = app.sigFs;
            app.outputPlot()
        end

        % Value changed function: OutputTabInfoNameEditField
        function OutputTabInfoNameEditFieldValueChanged(app, event)
            value = app.OutputTabInfoNameEditField.Value;
            app.infoName = value;
        end

        % Value changed function: OutputTabInfoIDEditField
        function OutputTabInfoIDEditFieldValueChanged(app, event)
            value = app.OutputTabInfoIDEditField.Value;
            app.infoID = value;
        end

        % Value changed function: OutputTabInfoDatePicker
        function OutputTabInfoDatePickerValueChanged(app, event)
            value = app.OutputTabInfoDatePicker.Value;
            app.infoDate = value;
        end

        % Value changed function: OutputTabTimeHourSpinner
        function OutputTabTimeHourSpinnerValueChanged(app, event)
            value = app.OutputTabTimeHourSpinner.Value;
            app.infoTime(1) = value;
        end

        % Value changed function: OutputTabTimeMinuteSpinner
        function OutputTabTimeMinuteSpinnerValueChanged(app, event)
            value = app.OutputTabTimeMinuteSpinner.Value;
            app.infoTime(2) = value;
        end

        % Value changed function: OutputTabTimeSecondSpinner
        function OutputTabTimeSecondSpinnerValueChanged(app, event)
            value = app.OutputTabTimeSecondSpinner.Value;
            app.infoTime(3) = value;
        end

        % Value changed function: OutputTabTimeMillisecondSpinner
        function OutputTabTimeMillisecondSpinnerValueChanged(app, event)
            value = app.OutputTabTimeMillisecondSpinner.Value;
            app.infoTime(4) = value;
        end

        % Value changed function: OutputTabNoteTextArea
        function OutputTabNoteTextAreaValueChanged(app, event)
            value = app.OutputTabNoteTextArea.Value;
            app.infoNote = value;
        end

        % Button down function: StartTab
        function StartTabButtonDown(app, event)
            app.StartTabInfoNameEditField.Value = app.infoName;
            app.StartTabInfoIDEditField.Value = app.infoID;
            app.StartTabInfoDatePicker.Value = app.infoDate;
            app.StartTabTimeHourSpinner.Value = app.infoTime(1);
            app.StartTabTimeMinuteSpinner.Value = app.infoTime(2);
            app.StartTabTimeSecondSpinner.Value = app.infoTime(3);
            app.StartTabTimeMillisecondSpinner.Value = app.infoTime(4);
            app.StartTabNoteTextArea.Value = app.infoNote;
            app.StartTabTFrequencySpinner.Value = app.sigFs;
        end

        % Value changed function: OutputTabTFrequencySpinner
        function OutputTabTFrequencySpinnerValueChanged(app, event)
            value = app.OutputTabTFrequencySpinner.Value;
            app.sigFs = value;
        end

        % Button pushed function: OutputTabPageNext
        function OutputTabPageNextButtonPushed(app, event)
            value = app.OutputTabPageEditField.Value;
            app.OutputTabPageEditField.Value = min(value + 1, height(app.result));
            app.outputPlot()
        end

        % Button pushed function: OutputTabPagePrev
        function OutputTabPagePrevButtonPushed(app, event)
            value = app.OutputTabPageEditField.Value;
            app.OutputTabPageEditField.Value = max(1, value - 1);
            app.outputPlot()
        end

        % Button pushed function: OutputTabPageLast
        function OutputTabPageLastButtonPushed(app, event)
            app.OutputTabPageEditField.Value = height(app.result);
            app.outputPlot()
        end

        % Button pushed function: OutputTabPageFirst
        function OutputTabPageFirstButtonPushed(app, event)
            app.OutputTabPageEditField.Value = 1;
            app.outputPlot()
        end

        % Value changed function: OutputTabPageEditField
        function OutputTabPageEditFieldValueChanged(app, event)
            value = app.OutputTabPageEditField.Value;
            value = max(1, value);
            value = min(value, height(app.result));
            app.OutputTabPageEditField.Value = value;
            app.outputPlot()
        end

        % Button pushed function: OutputTabOutputAllButton
        function OutputTabOutputAllButtonPushed(app, event)
            writetable(app.result, strcat(uigetdir(),"\",app.infoName,".xlsx"))
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create HRVAnalyserMainGUI and hide until all components are created
            app.HRVAnalyserMainGUI = uifigure('Visible', 'off');
            app.HRVAnalyserMainGUI.Position = [100 100 537 416];
            app.HRVAnalyserMainGUI.Name = 'MATLAB App';

            % Create FileMenu
            app.FileMenu = uimenu(app.HRVAnalyserMainGUI);
            app.FileMenu.Text = 'File';

            % Create ImportdataMenu
            app.ImportdataMenu = uimenu(app.FileMenu);
            app.ImportdataMenu.Text = 'Import data';

            % Create FromMindraycsvfileMenu
            app.FromMindraycsvfileMenu = uimenu(app.ImportdataMenu);
            app.FromMindraycsvfileMenu.MenuSelectedFcn = createCallbackFcn(app, @FromMindraycsvfileMenuSelected, true);
            app.FromMindraycsvfileMenu.Text = 'From Mindray .csv file';

            % Create FromTMEtxtfileMenu
            app.FromTMEtxtfileMenu = uimenu(app.ImportdataMenu);
            app.FromTMEtxtfileMenu.MenuSelectedFcn = createCallbackFcn(app, @FromTMEtxtfileMenuSelected, true);
            app.FromTMEtxtfileMenu.Text = 'From TME .txt file';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.FileMenu);
            app.ExportMenu.Text = 'Export';

            % Create MainGridLayout
            app.MainGridLayout = uigridlayout(app.HRVAnalyserMainGUI);
            app.MainGridLayout.ColumnWidth = {'1x'};
            app.MainGridLayout.RowHeight = {'1x'};
            app.MainGridLayout.ColumnSpacing = 0;
            app.MainGridLayout.RowSpacing = 0;
            app.MainGridLayout.Padding = [0 0 0 0];
            app.MainGridLayout.Interruptible = 'off';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.MainGridLayout);
            app.TabGroup.Layout.Row = 1;
            app.TabGroup.Layout.Column = 1;

            % Create StartTab
            app.StartTab = uitab(app.TabGroup);
            app.StartTab.Title = 'Start';
            app.StartTab.ButtonDownFcn = createCallbackFcn(app, @StartTabButtonDown, true);

            % Create StartTabMainGridLayout
            app.StartTabMainGridLayout = uigridlayout(app.StartTab);
            app.StartTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.StartTabMainGridLayout.RowHeight = {'1x', 80};
            app.StartTabMainGridLayout.ColumnSpacing = 0;
            app.StartTabMainGridLayout.RowSpacing = 0;
            app.StartTabMainGridLayout.Padding = [5 5 5 5];

            % Create StartTabInformationGridLayout
            app.StartTabInformationGridLayout = uigridlayout(app.StartTabMainGridLayout);
            app.StartTabInformationGridLayout.ColumnWidth = {'1x'};
            app.StartTabInformationGridLayout.RowHeight = {20, 20, 20, 20, 40, 20, '1x'};
            app.StartTabInformationGridLayout.ColumnSpacing = 0;
            app.StartTabInformationGridLayout.RowSpacing = 0;
            app.StartTabInformationGridLayout.Padding = [0 0 0 0];
            app.StartTabInformationGridLayout.Layout.Row = 1;
            app.StartTabInformationGridLayout.Layout.Column = 2;

            % Create StartTabInfoNameGridLayout
            app.StartTabInfoNameGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabInfoNameGridLayout.ColumnWidth = {40, '1x'};
            app.StartTabInfoNameGridLayout.RowHeight = {'1x'};
            app.StartTabInfoNameGridLayout.ColumnSpacing = 0;
            app.StartTabInfoNameGridLayout.RowSpacing = 0;
            app.StartTabInfoNameGridLayout.Padding = [0 0 0 0];
            app.StartTabInfoNameGridLayout.Layout.Row = 2;
            app.StartTabInfoNameGridLayout.Layout.Column = 1;

            % Create StartTabInfoNameLabel
            app.StartTabInfoNameLabel = uilabel(app.StartTabInfoNameGridLayout);
            app.StartTabInfoNameLabel.HorizontalAlignment = 'right';
            app.StartTabInfoNameLabel.Layout.Row = 1;
            app.StartTabInfoNameLabel.Layout.Column = 1;
            app.StartTabInfoNameLabel.Text = 'Name ';

            % Create StartTabInfoNameEditField
            app.StartTabInfoNameEditField = uieditfield(app.StartTabInfoNameGridLayout, 'text');
            app.StartTabInfoNameEditField.ValueChangedFcn = createCallbackFcn(app, @StartTabInfoNameEditFieldValueChanged, true);
            app.StartTabInfoNameEditField.Layout.Row = 1;
            app.StartTabInfoNameEditField.Layout.Column = 2;
            app.StartTabInfoNameEditField.Value = 'None';

            % Create StartTabInfoIDGridLayout
            app.StartTabInfoIDGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabInfoIDGridLayout.ColumnWidth = {40, '1x'};
            app.StartTabInfoIDGridLayout.RowHeight = {'1x'};
            app.StartTabInfoIDGridLayout.ColumnSpacing = 0;
            app.StartTabInfoIDGridLayout.RowSpacing = 0;
            app.StartTabInfoIDGridLayout.Padding = [0 0 0 0];
            app.StartTabInfoIDGridLayout.Layout.Row = 3;
            app.StartTabInfoIDGridLayout.Layout.Column = 1;

            % Create StartTabInfoIDLabel
            app.StartTabInfoIDLabel = uilabel(app.StartTabInfoIDGridLayout);
            app.StartTabInfoIDLabel.HorizontalAlignment = 'right';
            app.StartTabInfoIDLabel.Layout.Row = 1;
            app.StartTabInfoIDLabel.Layout.Column = 1;
            app.StartTabInfoIDLabel.Text = 'ID ';

            % Create StartTabInfoIDEditField
            app.StartTabInfoIDEditField = uieditfield(app.StartTabInfoIDGridLayout, 'text');
            app.StartTabInfoIDEditField.ValueChangedFcn = createCallbackFcn(app, @StartTabInfoIDEditFieldValueChanged, true);
            app.StartTabInfoIDEditField.Layout.Row = 1;
            app.StartTabInfoIDEditField.Layout.Column = 2;
            app.StartTabInfoIDEditField.Value = 'NA';

            % Create StartTabInfoDateGridLayout
            app.StartTabInfoDateGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabInfoDateGridLayout.ColumnWidth = {40, '1x'};
            app.StartTabInfoDateGridLayout.RowHeight = {'1x'};
            app.StartTabInfoDateGridLayout.ColumnSpacing = 0;
            app.StartTabInfoDateGridLayout.RowSpacing = 0;
            app.StartTabInfoDateGridLayout.Padding = [0 0 0 0];
            app.StartTabInfoDateGridLayout.Layout.Row = 4;
            app.StartTabInfoDateGridLayout.Layout.Column = 1;

            % Create StartTabInfoDateLabel
            app.StartTabInfoDateLabel = uilabel(app.StartTabInfoDateGridLayout);
            app.StartTabInfoDateLabel.HorizontalAlignment = 'right';
            app.StartTabInfoDateLabel.Layout.Row = 1;
            app.StartTabInfoDateLabel.Layout.Column = 1;
            app.StartTabInfoDateLabel.Text = 'Date ';

            % Create StartTabInfoDatePicker
            app.StartTabInfoDatePicker = uidatepicker(app.StartTabInfoDateGridLayout);
            app.StartTabInfoDatePicker.ValueChangedFcn = createCallbackFcn(app, @StartTabInfoDatePickerValueChanged, true);
            app.StartTabInfoDatePicker.Layout.Row = 1;
            app.StartTabInfoDatePicker.Layout.Column = 2;

            % Create StartTabTimeGridLayout
            app.StartTabTimeGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabTimeGridLayout.ColumnWidth = {40, '1x', 5, '1x'};
            app.StartTabTimeGridLayout.ColumnSpacing = 0;
            app.StartTabTimeGridLayout.RowSpacing = 0;
            app.StartTabTimeGridLayout.Padding = [0 0 0 0];
            app.StartTabTimeGridLayout.Layout.Row = 5;
            app.StartTabTimeGridLayout.Layout.Column = 1;

            % Create StartTabTimeLabel
            app.StartTabTimeLabel = uilabel(app.StartTabTimeGridLayout);
            app.StartTabTimeLabel.HorizontalAlignment = 'right';
            app.StartTabTimeLabel.Layout.Row = 1;
            app.StartTabTimeLabel.Layout.Column = 1;
            app.StartTabTimeLabel.Text = 'Time ';

            % Create StartTabTimeHourSpinner
            app.StartTabTimeHourSpinner = uispinner(app.StartTabTimeGridLayout);
            app.StartTabTimeHourSpinner.Limits = [0 23];
            app.StartTabTimeHourSpinner.ValueDisplayFormat = '%02d';
            app.StartTabTimeHourSpinner.ValueChangedFcn = createCallbackFcn(app, @StartTabTimeHourSpinnerValueChanged, true);
            app.StartTabTimeHourSpinner.HorizontalAlignment = 'center';
            app.StartTabTimeHourSpinner.Layout.Row = 1;
            app.StartTabTimeHourSpinner.Layout.Column = 2;

            % Create StartTabTimeMinuteSpinner
            app.StartTabTimeMinuteSpinner = uispinner(app.StartTabTimeGridLayout);
            app.StartTabTimeMinuteSpinner.Limits = [0 59];
            app.StartTabTimeMinuteSpinner.ValueDisplayFormat = '%02d';
            app.StartTabTimeMinuteSpinner.ValueChangedFcn = createCallbackFcn(app, @StartTabTimeMinuteSpinnerValueChanged, true);
            app.StartTabTimeMinuteSpinner.HorizontalAlignment = 'left';
            app.StartTabTimeMinuteSpinner.Layout.Row = 1;
            app.StartTabTimeMinuteSpinner.Layout.Column = 4;

            % Create StartTabTimeLabel1
            app.StartTabTimeLabel1 = uilabel(app.StartTabTimeGridLayout);
            app.StartTabTimeLabel1.Layout.Row = 1;
            app.StartTabTimeLabel1.Layout.Column = 3;
            app.StartTabTimeLabel1.Text = ':';

            % Create StartTabTimeSecondSpinner
            app.StartTabTimeSecondSpinner = uispinner(app.StartTabTimeGridLayout);
            app.StartTabTimeSecondSpinner.Limits = [0 59];
            app.StartTabTimeSecondSpinner.ValueDisplayFormat = '%02d';
            app.StartTabTimeSecondSpinner.ValueChangedFcn = createCallbackFcn(app, @StartTabTimeSecondSpinnerValueChanged, true);
            app.StartTabTimeSecondSpinner.HorizontalAlignment = 'center';
            app.StartTabTimeSecondSpinner.Layout.Row = 2;
            app.StartTabTimeSecondSpinner.Layout.Column = 2;

            % Create StartTabTimeLabel2
            app.StartTabTimeLabel2 = uilabel(app.StartTabTimeGridLayout);
            app.StartTabTimeLabel2.Layout.Row = 2;
            app.StartTabTimeLabel2.Layout.Column = 3;
            app.StartTabTimeLabel2.Text = ':';

            % Create StartTabTimeMillisecondSpinner
            app.StartTabTimeMillisecondSpinner = uieditfield(app.StartTabTimeGridLayout, 'numeric');
            app.StartTabTimeMillisecondSpinner.Limits = [0 999];
            app.StartTabTimeMillisecondSpinner.ValueDisplayFormat = '%04d';
            app.StartTabTimeMillisecondSpinner.ValueChangedFcn = createCallbackFcn(app, @StartTabTimeMillisecondSpinnerValueChanged, true);
            app.StartTabTimeMillisecondSpinner.HorizontalAlignment = 'left';
            app.StartTabTimeMillisecondSpinner.Layout.Row = 2;
            app.StartTabTimeMillisecondSpinner.Layout.Column = 4;

            % Create StartTabFrequencyGridLayout
            app.StartTabFrequencyGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabFrequencyGridLayout.ColumnWidth = {70, '1x'};
            app.StartTabFrequencyGridLayout.RowHeight = {'1x'};
            app.StartTabFrequencyGridLayout.ColumnSpacing = 0;
            app.StartTabFrequencyGridLayout.RowSpacing = 0;
            app.StartTabFrequencyGridLayout.Padding = [0 0 0 0];
            app.StartTabFrequencyGridLayout.Layout.Row = 6;
            app.StartTabFrequencyGridLayout.Layout.Column = 1;

            % Create StartTabFrequencyLabel
            app.StartTabFrequencyLabel = uilabel(app.StartTabFrequencyGridLayout);
            app.StartTabFrequencyLabel.HorizontalAlignment = 'right';
            app.StartTabFrequencyLabel.FontWeight = 'bold';
            app.StartTabFrequencyLabel.FontColor = [1 0 0];
            app.StartTabFrequencyLabel.Layout.Row = 1;
            app.StartTabFrequencyLabel.Layout.Column = 1;
            app.StartTabFrequencyLabel.Text = 'Frequency ';

            % Create StartTabTFrequencySpinner
            app.StartTabTFrequencySpinner = uieditfield(app.StartTabFrequencyGridLayout, 'numeric');
            app.StartTabTFrequencySpinner.Limits = [0 1000];
            app.StartTabTFrequencySpinner.ValueDisplayFormat = '%d';
            app.StartTabTFrequencySpinner.ValueChangedFcn = createCallbackFcn(app, @StartTabTFrequencySpinnerValueChanged, true);
            app.StartTabTFrequencySpinner.HorizontalAlignment = 'left';
            app.StartTabTFrequencySpinner.Layout.Row = 1;
            app.StartTabTFrequencySpinner.Layout.Column = 2;
            app.StartTabTFrequencySpinner.Value = 256;

            % Create StartTabInformationLabel
            app.StartTabInformationLabel = uilabel(app.StartTabInformationGridLayout);
            app.StartTabInformationLabel.HorizontalAlignment = 'center';
            app.StartTabInformationLabel.FontWeight = 'bold';
            app.StartTabInformationLabel.Layout.Row = 1;
            app.StartTabInformationLabel.Layout.Column = 1;
            app.StartTabInformationLabel.Text = 'Information';

            % Create StartTabNoteGridLayout
            app.StartTabNoteGridLayout = uigridlayout(app.StartTabInformationGridLayout);
            app.StartTabNoteGridLayout.ColumnWidth = {40, '1x'};
            app.StartTabNoteGridLayout.RowHeight = {'1x'};
            app.StartTabNoteGridLayout.ColumnSpacing = 0;
            app.StartTabNoteGridLayout.RowSpacing = 0;
            app.StartTabNoteGridLayout.Padding = [0 0 0 0];
            app.StartTabNoteGridLayout.Layout.Row = 7;
            app.StartTabNoteGridLayout.Layout.Column = 1;

            % Create StartTabNoteLabel
            app.StartTabNoteLabel = uilabel(app.StartTabNoteGridLayout);
            app.StartTabNoteLabel.HorizontalAlignment = 'right';
            app.StartTabNoteLabel.Layout.Row = 1;
            app.StartTabNoteLabel.Layout.Column = 1;
            app.StartTabNoteLabel.Text = 'Note ';

            % Create StartTabNoteTextArea
            app.StartTabNoteTextArea = uitextarea(app.StartTabNoteGridLayout);
            app.StartTabNoteTextArea.ValueChangedFcn = createCallbackFcn(app, @StartTabNoteTextAreaValueChanged, true);
            app.StartTabNoteTextArea.Layout.Row = 1;
            app.StartTabNoteTextArea.Layout.Column = 2;

            % Create StartTabPlotSignalGridLayout
            app.StartTabPlotSignalGridLayout = uigridlayout(app.StartTabMainGridLayout);
            app.StartTabPlotSignalGridLayout.ColumnWidth = {'1.8x', '1x'};
            app.StartTabPlotSignalGridLayout.RowHeight = {20, 20, 20};
            app.StartTabPlotSignalGridLayout.ColumnSpacing = 3;
            app.StartTabPlotSignalGridLayout.RowSpacing = 0;
            app.StartTabPlotSignalGridLayout.Padding = [0 0 0 0];
            app.StartTabPlotSignalGridLayout.Layout.Row = 2;
            app.StartTabPlotSignalGridLayout.Layout.Column = 2;

            % Create StartTabPlotSignalLabel
            app.StartTabPlotSignalLabel = uilabel(app.StartTabPlotSignalGridLayout);
            app.StartTabPlotSignalLabel.HorizontalAlignment = 'center';
            app.StartTabPlotSignalLabel.FontWeight = 'bold';
            app.StartTabPlotSignalLabel.Layout.Row = 1;
            app.StartTabPlotSignalLabel.Layout.Column = [1 2];
            app.StartTabPlotSignalLabel.Text = 'Plot Signal';

            % Create StartTabPlotAutoCheckBox
            app.StartTabPlotAutoCheckBox = uicheckbox(app.StartTabPlotSignalGridLayout);
            app.StartTabPlotAutoCheckBox.Text = 'Auto';
            app.StartTabPlotAutoCheckBox.Layout.Row = 2;
            app.StartTabPlotAutoCheckBox.Layout.Column = 2;
            app.StartTabPlotAutoCheckBox.Value = true;

            % Create StartTabPlotSignalButton
            app.StartTabPlotSignalButton = uibutton(app.StartTabPlotSignalGridLayout, 'push');
            app.StartTabPlotSignalButton.ButtonPushedFcn = createCallbackFcn(app, @StartTabPlotSignalButtonPushed, true);
            app.StartTabPlotSignalButton.HorizontalAlignment = 'left';
            app.StartTabPlotSignalButton.Layout.Row = 2;
            app.StartTabPlotSignalButton.Layout.Column = 1;
            app.StartTabPlotSignalButton.Text = 'Plot Signal';

            % Create StartTabCutSignalButton
            app.StartTabCutSignalButton = uibutton(app.StartTabPlotSignalGridLayout, 'push');
            app.StartTabCutSignalButton.ButtonPushedFcn = createCallbackFcn(app, @StartTabCutSignalButtonPushed, true);
            app.StartTabCutSignalButton.HorizontalAlignment = 'left';
            app.StartTabCutSignalButton.Layout.Row = 3;
            app.StartTabCutSignalButton.Layout.Column = 1;
            app.StartTabCutSignalButton.Text = 'Cut Signal';

            % Create StartTabPlotSettingGridLayout
            app.StartTabPlotSettingGridLayout = uigridlayout(app.StartTabMainGridLayout);
            app.StartTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.StartTabPlotSettingGridLayout.RowHeight = {20, 20, 20, 20};
            app.StartTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.StartTabPlotSettingGridLayout.RowSpacing = 0;
            app.StartTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.StartTabPlotSettingGridLayout.Layout.Row = 2;
            app.StartTabPlotSettingGridLayout.Layout.Column = 1;

            % Create StartTabSignalGridLayout
            app.StartTabSignalGridLayout = uigridlayout(app.StartTabPlotSettingGridLayout);
            app.StartTabSignalGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.StartTabSignalGridLayout.RowHeight = {'1x'};
            app.StartTabSignalGridLayout.ColumnSpacing = 0;
            app.StartTabSignalGridLayout.RowSpacing = 0;
            app.StartTabSignalGridLayout.Padding = [0 0 0 0];
            app.StartTabSignalGridLayout.Layout.Row = 2;
            app.StartTabSignalGridLayout.Layout.Column = 1;

            % Create StartTabSignalEditField
            app.StartTabSignalEditField = uieditfield(app.StartTabSignalGridLayout, 'numeric');
            app.StartTabSignalEditField.Limits = [0 Inf];
            app.StartTabSignalEditField.ValueChangedFcn = createCallbackFcn(app, @StartTabSignalEditFieldValueChanged, true);
            app.StartTabSignalEditField.HorizontalAlignment = 'center';
            app.StartTabSignalEditField.Layout.Row = 1;
            app.StartTabSignalEditField.Layout.Column = 4;

            % Create StartTabSignalSubtract5min
            app.StartTabSignalSubtract5min = uibutton(app.StartTabSignalGridLayout, 'push');
            app.StartTabSignalSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @StartTabSignalSubtract5minButtonPushed, true);
            app.StartTabSignalSubtract5min.Layout.Row = 1;
            app.StartTabSignalSubtract5min.Layout.Column = 2;
            app.StartTabSignalSubtract5min.Text = '-5min';

            % Create StartTabSignalSubtract1min
            app.StartTabSignalSubtract1min = uibutton(app.StartTabSignalGridLayout, 'push');
            app.StartTabSignalSubtract1min.ButtonPushedFcn = createCallbackFcn(app, @StartTabSignalSubtract1minButtonPushed, true);
            app.StartTabSignalSubtract1min.Layout.Row = 1;
            app.StartTabSignalSubtract1min.Layout.Column = 3;
            app.StartTabSignalSubtract1min.Text = '-1min';

            % Create StartTabSignalAdd1min
            app.StartTabSignalAdd1min = uibutton(app.StartTabSignalGridLayout, 'push');
            app.StartTabSignalAdd1min.ButtonPushedFcn = createCallbackFcn(app, @StartTabSignalAdd1minButtonPushed, true);
            app.StartTabSignalAdd1min.Layout.Row = 1;
            app.StartTabSignalAdd1min.Layout.Column = 5;
            app.StartTabSignalAdd1min.Text = '+1min';

            % Create StartTabSignalAdd5min
            app.StartTabSignalAdd5min = uibutton(app.StartTabSignalGridLayout, 'push');
            app.StartTabSignalAdd5min.ButtonPushedFcn = createCallbackFcn(app, @StartTabSignalAdd5minButtonPushed, true);
            app.StartTabSignalAdd5min.Layout.Row = 1;
            app.StartTabSignalAdd5min.Layout.Column = 6;
            app.StartTabSignalAdd5min.Text = '+5min';

            % Create StartTabSignalStartTimesLabel
            app.StartTabSignalStartTimesLabel = uilabel(app.StartTabSignalGridLayout);
            app.StartTabSignalStartTimesLabel.HorizontalAlignment = 'right';
            app.StartTabSignalStartTimesLabel.Layout.Row = 1;
            app.StartTabSignalStartTimesLabel.Layout.Column = 1;
            app.StartTabSignalStartTimesLabel.Text = 'Start Time (s) : ';

            % Create StartTabPlotDensityGridLayout
            app.StartTabPlotDensityGridLayout = uigridlayout(app.StartTabPlotSettingGridLayout);
            app.StartTabPlotDensityGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.StartTabPlotDensityGridLayout.RowHeight = {'1x'};
            app.StartTabPlotDensityGridLayout.ColumnSpacing = 0;
            app.StartTabPlotDensityGridLayout.RowSpacing = 0;
            app.StartTabPlotDensityGridLayout.Padding = [0 0 0 0];
            app.StartTabPlotDensityGridLayout.Layout.Row = 3;
            app.StartTabPlotDensityGridLayout.Layout.Column = 1;

            % Create StartTabDensityEditField
            app.StartTabDensityEditField = uieditfield(app.StartTabPlotDensityGridLayout, 'numeric');
            app.StartTabDensityEditField.Limits = [5 Inf];
            app.StartTabDensityEditField.ValueChangedFcn = createCallbackFcn(app, @StartTabDensityEditFieldValueChanged, true);
            app.StartTabDensityEditField.HorizontalAlignment = 'center';
            app.StartTabDensityEditField.Layout.Row = 1;
            app.StartTabDensityEditField.Layout.Column = 4;
            app.StartTabDensityEditField.Value = 300;

            % Create StartTabDensitySubtract30s
            app.StartTabDensitySubtract30s = uibutton(app.StartTabPlotDensityGridLayout, 'push');
            app.StartTabDensitySubtract30s.ButtonPushedFcn = createCallbackFcn(app, @StartTabDensitySubtract30sButtonPushed, true);
            app.StartTabDensitySubtract30s.Layout.Row = 1;
            app.StartTabDensitySubtract30s.Layout.Column = 2;
            app.StartTabDensitySubtract30s.Text = '-30s';

            % Create StartTabDensitySubtract5s
            app.StartTabDensitySubtract5s = uibutton(app.StartTabPlotDensityGridLayout, 'push');
            app.StartTabDensitySubtract5s.ButtonPushedFcn = createCallbackFcn(app, @StartTabDensitySubtract5sButtonPushed, true);
            app.StartTabDensitySubtract5s.Layout.Row = 1;
            app.StartTabDensitySubtract5s.Layout.Column = 3;
            app.StartTabDensitySubtract5s.Text = '-5s';

            % Create StartTabDensityAdd5s
            app.StartTabDensityAdd5s = uibutton(app.StartTabPlotDensityGridLayout, 'push');
            app.StartTabDensityAdd5s.ButtonPushedFcn = createCallbackFcn(app, @StartTabDensityAdd5sButtonPushed, true);
            app.StartTabDensityAdd5s.Layout.Row = 1;
            app.StartTabDensityAdd5s.Layout.Column = 5;
            app.StartTabDensityAdd5s.Text = '+5s';

            % Create StartTabDensityAdd30s
            app.StartTabDensityAdd30s = uibutton(app.StartTabPlotDensityGridLayout, 'push');
            app.StartTabDensityAdd30s.ButtonPushedFcn = createCallbackFcn(app, @StartTabDensityAdd30sButtonPushed, true);
            app.StartTabDensityAdd30s.Layout.Row = 1;
            app.StartTabDensityAdd30s.Layout.Column = 6;
            app.StartTabDensityAdd30s.Text = '+30s';

            % Create StartTabDensitysLabel
            app.StartTabDensitysLabel = uilabel(app.StartTabPlotDensityGridLayout);
            app.StartTabDensitysLabel.HorizontalAlignment = 'right';
            app.StartTabDensitysLabel.Layout.Row = 1;
            app.StartTabDensitysLabel.Layout.Column = 1;
            app.StartTabDensitysLabel.Text = 'Density (s) : ';

            % Create StartTabPlotSettingLabel
            app.StartTabPlotSettingLabel = uilabel(app.StartTabPlotSettingGridLayout);
            app.StartTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.StartTabPlotSettingLabel.FontWeight = 'bold';
            app.StartTabPlotSettingLabel.Layout.Row = 1;
            app.StartTabPlotSettingLabel.Layout.Column = 1;
            app.StartTabPlotSettingLabel.Text = 'Plot Setting';

            % Create StartTabUIAxesGridLayout
            app.StartTabUIAxesGridLayout = uigridlayout(app.StartTabMainGridLayout);
            app.StartTabUIAxesGridLayout.ColumnWidth = {'1x'};
            app.StartTabUIAxesGridLayout.RowHeight = {20, '1x', '1x', '1x', '1x', '1x', 20};
            app.StartTabUIAxesGridLayout.ColumnSpacing = 0;
            app.StartTabUIAxesGridLayout.RowSpacing = 0;
            app.StartTabUIAxesGridLayout.Padding = [0 0 0 0];
            app.StartTabUIAxesGridLayout.Layout.Row = 1;
            app.StartTabUIAxesGridLayout.Layout.Column = 1;
            app.StartTabUIAxesGridLayout.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create StartTabSignalUIAxes1
            app.StartTabSignalUIAxes1 = uiaxes(app.StartTabUIAxesGridLayout);
            app.StartTabSignalUIAxes1.Layout.Row = 2;
            app.StartTabSignalUIAxes1.Layout.Column = 1;

            % Create StartTabSignalUIAxes2
            app.StartTabSignalUIAxes2 = uiaxes(app.StartTabUIAxesGridLayout);
            app.StartTabSignalUIAxes2.Layout.Row = 3;
            app.StartTabSignalUIAxes2.Layout.Column = 1;

            % Create StartTabSignalUIAxes3
            app.StartTabSignalUIAxes3 = uiaxes(app.StartTabUIAxesGridLayout);
            app.StartTabSignalUIAxes3.Layout.Row = 4;
            app.StartTabSignalUIAxes3.Layout.Column = 1;

            % Create StartTabSignalUIAxes5
            app.StartTabSignalUIAxes5 = uiaxes(app.StartTabUIAxesGridLayout);
            app.StartTabSignalUIAxes5.Layout.Row = 6;
            app.StartTabSignalUIAxes5.Layout.Column = 1;

            % Create StartTabSignalUIAxes4
            app.StartTabSignalUIAxes4 = uiaxes(app.StartTabUIAxesGridLayout);
            app.StartTabSignalUIAxes4.Layout.Row = 5;
            app.StartTabSignalUIAxes4.Layout.Column = 1;

            % Create StartTabSignalTitleLabel
            app.StartTabSignalTitleLabel = uilabel(app.StartTabUIAxesGridLayout);
            app.StartTabSignalTitleLabel.HorizontalAlignment = 'center';
            app.StartTabSignalTitleLabel.FontWeight = 'bold';
            app.StartTabSignalTitleLabel.Layout.Row = 1;
            app.StartTabSignalTitleLabel.Layout.Column = 1;
            app.StartTabSignalTitleLabel.Text = 'Signal';

            % Create StartTabSignalTimeLabel
            app.StartTabSignalTimeLabel = uilabel(app.StartTabUIAxesGridLayout);
            app.StartTabSignalTimeLabel.HorizontalAlignment = 'center';
            app.StartTabSignalTimeLabel.Layout.Row = 7;
            app.StartTabSignalTimeLabel.Layout.Column = 1;
            app.StartTabSignalTimeLabel.Text = 'Time (s)';

            % Create FilterTab
            app.FilterTab = uitab(app.TabGroup);
            app.FilterTab.Title = 'Filter';
            app.FilterTab.ButtonDownFcn = createCallbackFcn(app, @FilterTabButtonDown, true);

            % Create FilterTabMainGridLayout
            app.FilterTabMainGridLayout = uigridlayout(app.FilterTab);
            app.FilterTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.FilterTabMainGridLayout.RowHeight = {'1x', 80};
            app.FilterTabMainGridLayout.ColumnSpacing = 0;
            app.FilterTabMainGridLayout.RowSpacing = 0;
            app.FilterTabMainGridLayout.Padding = [5 5 5 5];

            % Create FilterTabFilterSettingGridLayout
            app.FilterTabFilterSettingGridLayout = uigridlayout(app.FilterTabMainGridLayout);
            app.FilterTabFilterSettingGridLayout.RowHeight = {20, 20, '1x', 20, 20, 20, 20};
            app.FilterTabFilterSettingGridLayout.ColumnSpacing = 0;
            app.FilterTabFilterSettingGridLayout.RowSpacing = 0;
            app.FilterTabFilterSettingGridLayout.Padding = [0 0 0 0];
            app.FilterTabFilterSettingGridLayout.Layout.Row = 1;
            app.FilterTabFilterSettingGridLayout.Layout.Column = 2;

            % Create FilterTabHighPassSpinner
            app.FilterTabHighPassSpinner = uispinner(app.FilterTabFilterSettingGridLayout);
            app.FilterTabHighPassSpinner.Step = 0.05;
            app.FilterTabHighPassSpinner.Limits = [0 30];
            app.FilterTabHighPassSpinner.ValueDisplayFormat = '%.3f';
            app.FilterTabHighPassSpinner.ValueChangedFcn = createCallbackFcn(app, @FilterTabHighPassSpinnerValueChanged, true);
            app.FilterTabHighPassSpinner.HorizontalAlignment = 'left';
            app.FilterTabHighPassSpinner.FontSize = 9;
            app.FilterTabHighPassSpinner.Layout.Row = 4;
            app.FilterTabHighPassSpinner.Layout.Column = 1;
            app.FilterTabHighPassSpinner.Value = 0.01;

            % Create FilterTabLowPassSpinner
            app.FilterTabLowPassSpinner = uispinner(app.FilterTabFilterSettingGridLayout);
            app.FilterTabLowPassSpinner.Step = 0.1;
            app.FilterTabLowPassSpinner.Limits = [10 100];
            app.FilterTabLowPassSpinner.ValueDisplayFormat = '%.1f';
            app.FilterTabLowPassSpinner.ValueChangedFcn = createCallbackFcn(app, @FilterTabLowPassSpinnerValueChanged, true);
            app.FilterTabLowPassSpinner.HorizontalAlignment = 'left';
            app.FilterTabLowPassSpinner.FontSize = 9;
            app.FilterTabLowPassSpinner.Layout.Row = 4;
            app.FilterTabLowPassSpinner.Layout.Column = 2;
            app.FilterTabLowPassSpinner.Value = 50;

            % Create FilterTabHighPassLabel
            app.FilterTabHighPassLabel = uilabel(app.FilterTabFilterSettingGridLayout);
            app.FilterTabHighPassLabel.HorizontalAlignment = 'center';
            app.FilterTabHighPassLabel.Layout.Row = 2;
            app.FilterTabHighPassLabel.Layout.Column = 1;
            app.FilterTabHighPassLabel.Text = 'High Pass';

            % Create FilterTabLowPassLabel
            app.FilterTabLowPassLabel = uilabel(app.FilterTabFilterSettingGridLayout);
            app.FilterTabLowPassLabel.HorizontalAlignment = 'center';
            app.FilterTabLowPassLabel.Layout.Row = 2;
            app.FilterTabLowPassLabel.Layout.Column = 2;
            app.FilterTabLowPassLabel.Text = 'Low Pass';

            % Create FilterTabHighPassSlider
            app.FilterTabHighPassSlider = uislider(app.FilterTabFilterSettingGridLayout);
            app.FilterTabHighPassSlider.Limits = [0 30];
            app.FilterTabHighPassSlider.MajorTicks = [0 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30];
            app.FilterTabHighPassSlider.MajorTickLabels = {'0', '0.01', '0.1', '0.5', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '20', '30'};
            app.FilterTabHighPassSlider.Orientation = 'vertical';
            app.FilterTabHighPassSlider.ValueChangedFcn = createCallbackFcn(app, @FilterTabHighPassSliderValueChanged, true);
            app.FilterTabHighPassSlider.ValueChangingFcn = createCallbackFcn(app, @FilterTabHighPassSliderValueChanging, true);
            app.FilterTabHighPassSlider.Tag = 'HighPassSlider';
            app.FilterTabHighPassSlider.Layout.Row = 3;
            app.FilterTabHighPassSlider.Layout.Column = 1;
            app.FilterTabHighPassSlider.Value = 2;

            % Create FilterTabLowPassSlider
            app.FilterTabLowPassSlider = uislider(app.FilterTabFilterSettingGridLayout);
            app.FilterTabLowPassSlider.Limits = [10 100];
            app.FilterTabLowPassSlider.Orientation = 'vertical';
            app.FilterTabLowPassSlider.ValueChangedFcn = createCallbackFcn(app, @FilterTabLowPassSliderValueChanged, true);
            app.FilterTabLowPassSlider.ValueChangingFcn = createCallbackFcn(app, @FilterTabLowPassSliderValueChanging, true);
            app.FilterTabLowPassSlider.Tag = 'LowPassSlider';
            app.FilterTabLowPassSlider.Layout.Row = 3;
            app.FilterTabLowPassSlider.Layout.Column = 2;
            app.FilterTabLowPassSlider.Value = 50;

            % Create FilterTabHighPassCheckBox
            app.FilterTabHighPassCheckBox = uicheckbox(app.FilterTabFilterSettingGridLayout);
            app.FilterTabHighPassCheckBox.ValueChangedFcn = createCallbackFcn(app, @FilterTabHighPassCheckBoxValueChanged, true);
            app.FilterTabHighPassCheckBox.Text = 'Apply';
            app.FilterTabHighPassCheckBox.FontSize = 9;
            app.FilterTabHighPassCheckBox.Layout.Row = 7;
            app.FilterTabHighPassCheckBox.Layout.Column = 1;
            app.FilterTabHighPassCheckBox.Value = true;

            % Create FilterTabLowPassCheckBox
            app.FilterTabLowPassCheckBox = uicheckbox(app.FilterTabFilterSettingGridLayout);
            app.FilterTabLowPassCheckBox.ValueChangedFcn = createCallbackFcn(app, @FilterTabLowPassCheckBoxValueChanged, true);
            app.FilterTabLowPassCheckBox.Text = 'Apply';
            app.FilterTabLowPassCheckBox.FontSize = 9;
            app.FilterTabLowPassCheckBox.Layout.Row = 7;
            app.FilterTabLowPassCheckBox.Layout.Column = 2;
            app.FilterTabLowPassCheckBox.Value = true;

            % Create FilterTabFilterFrequencyLabel
            app.FilterTabFilterFrequencyLabel = uilabel(app.FilterTabFilterSettingGridLayout);
            app.FilterTabFilterFrequencyLabel.HorizontalAlignment = 'center';
            app.FilterTabFilterFrequencyLabel.FontWeight = 'bold';
            app.FilterTabFilterFrequencyLabel.Layout.Row = 1;
            app.FilterTabFilterFrequencyLabel.Layout.Column = [1 2];
            app.FilterTabFilterFrequencyLabel.Text = 'Filter Frequency (Hz)';

            % Create FilterTabFilterOrderLabel
            app.FilterTabFilterOrderLabel = uilabel(app.FilterTabFilterSettingGridLayout);
            app.FilterTabFilterOrderLabel.HorizontalAlignment = 'center';
            app.FilterTabFilterOrderLabel.FontWeight = 'bold';
            app.FilterTabFilterOrderLabel.Layout.Row = 5;
            app.FilterTabFilterOrderLabel.Layout.Column = [1 2];
            app.FilterTabFilterOrderLabel.Text = 'Filter Order';

            % Create FilterTabHighPassOrderSpinner
            app.FilterTabHighPassOrderSpinner = uispinner(app.FilterTabFilterSettingGridLayout);
            app.FilterTabHighPassOrderSpinner.Limits = [1 10];
            app.FilterTabHighPassOrderSpinner.ValueDisplayFormat = '%.0f';
            app.FilterTabHighPassOrderSpinner.ValueChangedFcn = createCallbackFcn(app, @FilterTabHighPassOrderSpinnerValueChanged, true);
            app.FilterTabHighPassOrderSpinner.Layout.Row = 6;
            app.FilterTabHighPassOrderSpinner.Layout.Column = 1;
            app.FilterTabHighPassOrderSpinner.Value = 1;

            % Create Label
            app.Label = uilabel(app.FilterTabFilterSettingGridLayout);
            app.Label.HorizontalAlignment = 'right';
            app.Label.Layout.Row = 6;
            app.Label.Layout.Column = 2;
            app.Label.Text = '';

            % Create FilterTabLowPassOrderSpinner
            app.FilterTabLowPassOrderSpinner = uispinner(app.FilterTabFilterSettingGridLayout);
            app.FilterTabLowPassOrderSpinner.Limits = [1 10];
            app.FilterTabLowPassOrderSpinner.ValueDisplayFormat = '%.0f';
            app.FilterTabLowPassOrderSpinner.ValueChangedFcn = createCallbackFcn(app, @FilterTabLowPassOrderSpinnerValueChanged, true);
            app.FilterTabLowPassOrderSpinner.Layout.Row = 6;
            app.FilterTabLowPassOrderSpinner.Layout.Column = 2;
            app.FilterTabLowPassOrderSpinner.Value = 1;

            % Create FilterTabPlotSignalGridLayout
            app.FilterTabPlotSignalGridLayout = uigridlayout(app.FilterTabMainGridLayout);
            app.FilterTabPlotSignalGridLayout.ColumnWidth = {'1.8x', '1x'};
            app.FilterTabPlotSignalGridLayout.RowHeight = {20, 20, 20, 20};
            app.FilterTabPlotSignalGridLayout.ColumnSpacing = 3;
            app.FilterTabPlotSignalGridLayout.RowSpacing = 0;
            app.FilterTabPlotSignalGridLayout.Padding = [0 0 0 0];
            app.FilterTabPlotSignalGridLayout.Layout.Row = 2;
            app.FilterTabPlotSignalGridLayout.Layout.Column = 2;

            % Create FilterTabPlotFilterWindowButton
            app.FilterTabPlotFilterWindowButton = uibutton(app.FilterTabPlotSignalGridLayout, 'push');
            app.FilterTabPlotFilterWindowButton.ButtonPushedFcn = createCallbackFcn(app, @FilterTabPlotFilterWindowButtonPushed, true);
            app.FilterTabPlotFilterWindowButton.HorizontalAlignment = 'left';
            app.FilterTabPlotFilterWindowButton.Layout.Row = 3;
            app.FilterTabPlotFilterWindowButton.Layout.Column = 1;
            app.FilterTabPlotFilterWindowButton.Text = 'Filter Window';

            % Create FilterTabPlotAutoCheckBox
            app.FilterTabPlotAutoCheckBox = uicheckbox(app.FilterTabPlotSignalGridLayout);
            app.FilterTabPlotAutoCheckBox.ValueChangedFcn = createCallbackFcn(app, @FilterTabPlotAutoCheckBoxValueChanged, true);
            app.FilterTabPlotAutoCheckBox.Text = 'Auto';
            app.FilterTabPlotAutoCheckBox.Layout.Row = 2;
            app.FilterTabPlotAutoCheckBox.Layout.Column = 2;
            app.FilterTabPlotAutoCheckBox.Value = true;

            % Create FilterTabPlotAutoButtonGroup
            app.FilterTabPlotAutoButtonGroup = uibuttongroup(app.FilterTabPlotSignalGridLayout);
            app.FilterTabPlotAutoButtonGroup.BorderWidth = 0;
            app.FilterTabPlotAutoButtonGroup.Layout.Row = [3 4];
            app.FilterTabPlotAutoButtonGroup.Layout.Column = 2;

            % Create FilterTabPlotAutoButton_All
            app.FilterTabPlotAutoButton_All = uiradiobutton(app.FilterTabPlotAutoButtonGroup);
            app.FilterTabPlotAutoButton_All.Text = 'Auto';
            app.FilterTabPlotAutoButton_All.Position = [1 1 45 22];

            % Create FilterTabPlotAutoButton_Window
            app.FilterTabPlotAutoButton_Window = uiradiobutton(app.FilterTabPlotAutoButtonGroup);
            app.FilterTabPlotAutoButton_Window.Text = 'Auto';
            app.FilterTabPlotAutoButton_Window.Position = [1 20 45 22];
            app.FilterTabPlotAutoButton_Window.Value = true;

            % Create FilterTabPlotSignalButton
            app.FilterTabPlotSignalButton = uibutton(app.FilterTabPlotSignalGridLayout, 'push');
            app.FilterTabPlotSignalButton.ButtonPushedFcn = createCallbackFcn(app, @FilterTabPlotSignalButtonPushed, true);
            app.FilterTabPlotSignalButton.HorizontalAlignment = 'left';
            app.FilterTabPlotSignalButton.Layout.Row = 2;
            app.FilterTabPlotSignalButton.Layout.Column = 1;
            app.FilterTabPlotSignalButton.Text = 'Plot Signal';

            % Create FilterTabPlotSignalLabel
            app.FilterTabPlotSignalLabel = uilabel(app.FilterTabPlotSignalGridLayout);
            app.FilterTabPlotSignalLabel.HorizontalAlignment = 'center';
            app.FilterTabPlotSignalLabel.FontWeight = 'bold';
            app.FilterTabPlotSignalLabel.Layout.Row = 1;
            app.FilterTabPlotSignalLabel.Layout.Column = [1 2];
            app.FilterTabPlotSignalLabel.Text = 'Plot Signal';

            % Create FilterTabPlotFilterAllButton
            app.FilterTabPlotFilterAllButton = uibutton(app.FilterTabPlotSignalGridLayout, 'push');
            app.FilterTabPlotFilterAllButton.ButtonPushedFcn = createCallbackFcn(app, @FilterTabPlotFilterAllButtonPushed, true);
            app.FilterTabPlotFilterAllButton.HorizontalAlignment = 'left';
            app.FilterTabPlotFilterAllButton.Layout.Row = 4;
            app.FilterTabPlotFilterAllButton.Layout.Column = 1;
            app.FilterTabPlotFilterAllButton.Text = 'Filter All';

            % Create FilterTabSignalGridLayout
            app.FilterTabSignalGridLayout = uigridlayout(app.FilterTabMainGridLayout);
            app.FilterTabSignalGridLayout.ColumnWidth = {'1x'};
            app.FilterTabSignalGridLayout.RowHeight = {20, '5x', '3x', 20};
            app.FilterTabSignalGridLayout.ColumnSpacing = 0;
            app.FilterTabSignalGridLayout.RowSpacing = 0;
            app.FilterTabSignalGridLayout.Padding = [0 0 0 0];
            app.FilterTabSignalGridLayout.Layout.Row = 1;
            app.FilterTabSignalGridLayout.Layout.Column = 1;

            % Create FilterTabSignalUIAxes2
            app.FilterTabSignalUIAxes2 = uiaxes(app.FilterTabSignalGridLayout);
            title(app.FilterTabSignalUIAxes2, 'for 5min')
            app.FilterTabSignalUIAxes2.Layout.Row = 3;
            app.FilterTabSignalUIAxes2.Layout.Column = 1;

            % Create FilterTabSignalUIAxes1
            app.FilterTabSignalUIAxes1 = uiaxes(app.FilterTabSignalGridLayout);
            title(app.FilterTabSignalUIAxes1, 'for 10s')
            app.FilterTabSignalUIAxes1.Layout.Row = 2;
            app.FilterTabSignalUIAxes1.Layout.Column = 1;

            % Create FilterTabSignalTitleLabel
            app.FilterTabSignalTitleLabel = uilabel(app.FilterTabSignalGridLayout);
            app.FilterTabSignalTitleLabel.HorizontalAlignment = 'center';
            app.FilterTabSignalTitleLabel.FontWeight = 'bold';
            app.FilterTabSignalTitleLabel.Layout.Row = 1;
            app.FilterTabSignalTitleLabel.Layout.Column = 1;
            app.FilterTabSignalTitleLabel.Text = 'Signal';

            % Create FilterTabSignalTimesLabel
            app.FilterTabSignalTimesLabel = uilabel(app.FilterTabSignalGridLayout);
            app.FilterTabSignalTimesLabel.HorizontalAlignment = 'center';
            app.FilterTabSignalTimesLabel.Layout.Row = 4;
            app.FilterTabSignalTimesLabel.Layout.Column = 1;
            app.FilterTabSignalTimesLabel.Text = 'Time (s)';

            % Create FilterTabPlotSettingGridLayout
            app.FilterTabPlotSettingGridLayout = uigridlayout(app.FilterTabMainGridLayout);
            app.FilterTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.FilterTabPlotSettingGridLayout.RowHeight = {20, 20, 20, 20};
            app.FilterTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.FilterTabPlotSettingGridLayout.RowSpacing = 0;
            app.FilterTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.FilterTabPlotSettingGridLayout.Layout.Row = 2;
            app.FilterTabPlotSettingGridLayout.Layout.Column = 1;

            % Create FilterTabGridLayout
            app.FilterTabGridLayout = uigridlayout(app.FilterTabPlotSettingGridLayout);
            app.FilterTabGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.FilterTabGridLayout.RowHeight = {'1x'};
            app.FilterTabGridLayout.ColumnSpacing = 0;
            app.FilterTabGridLayout.RowSpacing = 0;
            app.FilterTabGridLayout.Padding = [0 0 0 0];
            app.FilterTabGridLayout.Layout.Row = 2;
            app.FilterTabGridLayout.Layout.Column = 1;

            % Create FilterTabSignalEditField
            app.FilterTabSignalEditField = uieditfield(app.FilterTabGridLayout, 'numeric');
            app.FilterTabSignalEditField.Limits = [0 Inf];
            app.FilterTabSignalEditField.ValueChangedFcn = createCallbackFcn(app, @FilterTabSignalEditFieldValueChanged, true);
            app.FilterTabSignalEditField.HorizontalAlignment = 'center';
            app.FilterTabSignalEditField.Layout.Row = 1;
            app.FilterTabSignalEditField.Layout.Column = 4;

            % Create FilterTabSignalSubtract10s
            app.FilterTabSignalSubtract10s = uibutton(app.FilterTabGridLayout, 'push');
            app.FilterTabSignalSubtract10s.ButtonPushedFcn = createCallbackFcn(app, @FilterTabSignalSubtract10sButtonPushed, true);
            app.FilterTabSignalSubtract10s.Layout.Row = 1;
            app.FilterTabSignalSubtract10s.Layout.Column = 3;
            app.FilterTabSignalSubtract10s.Text = '-10s';

            % Create FilterTabSignalAdd10s
            app.FilterTabSignalAdd10s = uibutton(app.FilterTabGridLayout, 'push');
            app.FilterTabSignalAdd10s.ButtonPushedFcn = createCallbackFcn(app, @FilterTabSignalAdd10sButtonPushed, true);
            app.FilterTabSignalAdd10s.Layout.Row = 1;
            app.FilterTabSignalAdd10s.Layout.Column = 5;
            app.FilterTabSignalAdd10s.Text = '+10s';

            % Create FilterTabStartTimeLabel
            app.FilterTabStartTimeLabel = uilabel(app.FilterTabGridLayout);
            app.FilterTabStartTimeLabel.HorizontalAlignment = 'right';
            app.FilterTabStartTimeLabel.Layout.Row = 1;
            app.FilterTabStartTimeLabel.Layout.Column = 1;
            app.FilterTabStartTimeLabel.Text = 'Start Time (s) : ';

            % Create FilterTabSignalSubtract5min
            app.FilterTabSignalSubtract5min = uibutton(app.FilterTabGridLayout, 'push');
            app.FilterTabSignalSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @FilterTabSignalSubtract5minButtonPushed, true);
            app.FilterTabSignalSubtract5min.Layout.Row = 1;
            app.FilterTabSignalSubtract5min.Layout.Column = 2;
            app.FilterTabSignalSubtract5min.Text = '-5min';

            % Create FilterTabSignalAdd5min
            app.FilterTabSignalAdd5min = uibutton(app.FilterTabGridLayout, 'push');
            app.FilterTabSignalAdd5min.ButtonPushedFcn = createCallbackFcn(app, @FilterTabSignalAdd5minButtonPushed, true);
            app.FilterTabSignalAdd5min.Layout.Row = 1;
            app.FilterTabSignalAdd5min.Layout.Column = 6;
            app.FilterTabSignalAdd5min.Text = '+5min';

            % Create FilterTabPlotSettingLabel
            app.FilterTabPlotSettingLabel = uilabel(app.FilterTabPlotSettingGridLayout);
            app.FilterTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.FilterTabPlotSettingLabel.FontWeight = 'bold';
            app.FilterTabPlotSettingLabel.Layout.Row = 1;
            app.FilterTabPlotSettingLabel.Layout.Column = 1;
            app.FilterTabPlotSettingLabel.Text = 'Plot Setting';

            % Create PredetectTab
            app.PredetectTab = uitab(app.TabGroup);
            app.PredetectTab.Title = 'Predetect';
            app.PredetectTab.ButtonDownFcn = createCallbackFcn(app, @PredetectTabButtonDown, true);

            % Create PredetectTabMainGridLayout
            app.PredetectTabMainGridLayout = uigridlayout(app.PredetectTab);
            app.PredetectTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.PredetectTabMainGridLayout.RowHeight = {'1x', 80};
            app.PredetectTabMainGridLayout.ColumnSpacing = 0;
            app.PredetectTabMainGridLayout.RowSpacing = 0;
            app.PredetectTabMainGridLayout.Padding = [5 5 5 5];

            % Create PredetectTabUIAxesGridLayout
            app.PredetectTabUIAxesGridLayout = uigridlayout(app.PredetectTabMainGridLayout);
            app.PredetectTabUIAxesGridLayout.ColumnWidth = {'1x'};
            app.PredetectTabUIAxesGridLayout.RowHeight = {20, '1x', '1x', '1x', '1x', '1x', 20};
            app.PredetectTabUIAxesGridLayout.ColumnSpacing = 0;
            app.PredetectTabUIAxesGridLayout.RowSpacing = 0;
            app.PredetectTabUIAxesGridLayout.Padding = [0 0 0 0];
            app.PredetectTabUIAxesGridLayout.Layout.Row = 1;
            app.PredetectTabUIAxesGridLayout.Layout.Column = 1;
            app.PredetectTabUIAxesGridLayout.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create PredetectTabSignalUIAxes1
            app.PredetectTabSignalUIAxes1 = uiaxes(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalUIAxes1.Layout.Row = 2;
            app.PredetectTabSignalUIAxes1.Layout.Column = 1;

            % Create PredetectTabSignalUIAxes2
            app.PredetectTabSignalUIAxes2 = uiaxes(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalUIAxes2.Layout.Row = 3;
            app.PredetectTabSignalUIAxes2.Layout.Column = 1;

            % Create PredetectTabSignalUIAxes3
            app.PredetectTabSignalUIAxes3 = uiaxes(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalUIAxes3.Layout.Row = 4;
            app.PredetectTabSignalUIAxes3.Layout.Column = 1;

            % Create PredetectTabSignalUIAxes5
            app.PredetectTabSignalUIAxes5 = uiaxes(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalUIAxes5.Layout.Row = 6;
            app.PredetectTabSignalUIAxes5.Layout.Column = 1;

            % Create PredetectTabSignalUIAxes4
            app.PredetectTabSignalUIAxes4 = uiaxes(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalUIAxes4.Layout.Row = 5;
            app.PredetectTabSignalUIAxes4.Layout.Column = 1;

            % Create PredetectTabSignalTitleLabel
            app.PredetectTabSignalTitleLabel = uilabel(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalTitleLabel.HorizontalAlignment = 'center';
            app.PredetectTabSignalTitleLabel.FontWeight = 'bold';
            app.PredetectTabSignalTitleLabel.Layout.Row = 1;
            app.PredetectTabSignalTitleLabel.Layout.Column = 1;
            app.PredetectTabSignalTitleLabel.Text = 'Signal';

            % Create PredetectTabSignalTimeLabel
            app.PredetectTabSignalTimeLabel = uilabel(app.PredetectTabUIAxesGridLayout);
            app.PredetectTabSignalTimeLabel.HorizontalAlignment = 'center';
            app.PredetectTabSignalTimeLabel.Layout.Row = 7;
            app.PredetectTabSignalTimeLabel.Layout.Column = 1;
            app.PredetectTabSignalTimeLabel.Text = 'Time (s)';

            % Create PredetectTabDetectSettingGridLayout
            app.PredetectTabDetectSettingGridLayout = uigridlayout(app.PredetectTabMainGridLayout);
            app.PredetectTabDetectSettingGridLayout.RowHeight = {20, 20, '1x', 20, 20, 20, 20, 20, 80, 20};
            app.PredetectTabDetectSettingGridLayout.ColumnSpacing = 0;
            app.PredetectTabDetectSettingGridLayout.RowSpacing = 0;
            app.PredetectTabDetectSettingGridLayout.Padding = [0 0 0 0];
            app.PredetectTabDetectSettingGridLayout.Layout.Row = 1;
            app.PredetectTabDetectSettingGridLayout.Layout.Column = 2;

            % Create PredetectTabAdjustUIAxes
            app.PredetectTabAdjustUIAxes = uiaxes(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabAdjustUIAxes.XTick = [];
            app.PredetectTabAdjustUIAxes.XTickLabel = {};
            app.PredetectTabAdjustUIAxes.YTick = [];
            app.PredetectTabAdjustUIAxes.YTickLabel = {};
            app.PredetectTabAdjustUIAxes.ZTick = [];
            app.PredetectTabAdjustUIAxes.ZTickLabel = '';
            app.PredetectTabAdjustUIAxes.Layout.Row = 9;
            app.PredetectTabAdjustUIAxes.Layout.Column = [1 2];

            % Create PredetectTabThresholdLabel
            app.PredetectTabThresholdLabel = uilabel(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabThresholdLabel.HorizontalAlignment = 'center';
            app.PredetectTabThresholdLabel.FontWeight = 'bold';
            app.PredetectTabThresholdLabel.Layout.Row = 1;
            app.PredetectTabThresholdLabel.Layout.Column = [1 2];
            app.PredetectTabThresholdLabel.Text = 'Threshold (%)';

            % Create PredetectTabVoltageLabel
            app.PredetectTabVoltageLabel = uilabel(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabVoltageLabel.HorizontalAlignment = 'center';
            app.PredetectTabVoltageLabel.Layout.Row = 2;
            app.PredetectTabVoltageLabel.Layout.Column = 1;
            app.PredetectTabVoltageLabel.Text = 'Voltage';

            % Create PredetectTabSlopeLabel
            app.PredetectTabSlopeLabel = uilabel(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabSlopeLabel.HorizontalAlignment = 'center';
            app.PredetectTabSlopeLabel.Layout.Row = 2;
            app.PredetectTabSlopeLabel.Layout.Column = 2;
            app.PredetectTabSlopeLabel.Text = 'Slope';

            % Create PredetectTabVoltageSlider
            app.PredetectTabVoltageSlider = uislider(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabVoltageSlider.Orientation = 'vertical';
            app.PredetectTabVoltageSlider.ValueChangingFcn = createCallbackFcn(app, @PredetectTabVoltageSliderValueChanging, true);
            app.PredetectTabVoltageSlider.Layout.Row = 3;
            app.PredetectTabVoltageSlider.Layout.Column = 1;

            % Create PredetectTabSlopeSlider
            app.PredetectTabSlopeSlider = uislider(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabSlopeSlider.Orientation = 'vertical';
            app.PredetectTabSlopeSlider.ValueChangingFcn = createCallbackFcn(app, @PredetectTabSlopeSliderValueChanging, true);
            app.PredetectTabSlopeSlider.Layout.Row = 3;
            app.PredetectTabSlopeSlider.Layout.Column = 2;

            % Create PredetectTabVoltageSpinner
            app.PredetectTabVoltageSpinner = uispinner(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabVoltageSpinner.ValueChangingFcn = createCallbackFcn(app, @PredetectTabVoltageSpinnerValueChanging, true);
            app.PredetectTabVoltageSpinner.Limits = [0 100];
            app.PredetectTabVoltageSpinner.Layout.Row = 4;
            app.PredetectTabVoltageSpinner.Layout.Column = 1;

            % Create PredetectTabSlopeSpinner
            app.PredetectTabSlopeSpinner = uispinner(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabSlopeSpinner.ValueChangingFcn = createCallbackFcn(app, @PredetectTabSlopeSpinnerValueChanging, true);
            app.PredetectTabSlopeSpinner.Limits = [0 100];
            app.PredetectTabSlopeSpinner.Layout.Row = 4;
            app.PredetectTabSlopeSpinner.Layout.Column = 2;

            % Create PredetectTabVoltageAutoCheckBox
            app.PredetectTabVoltageAutoCheckBox = uicheckbox(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabVoltageAutoCheckBox.ValueChangedFcn = createCallbackFcn(app, @PredetectTabVoltageAutoCheckBoxValueChanged, true);
            app.PredetectTabVoltageAutoCheckBox.Text = 'Auto';
            app.PredetectTabVoltageAutoCheckBox.Layout.Row = 6;
            app.PredetectTabVoltageAutoCheckBox.Layout.Column = 1;
            app.PredetectTabVoltageAutoCheckBox.Value = true;

            % Create PredetectTabVoltageAutoButton
            app.PredetectTabVoltageAutoButton = uibutton(app.PredetectTabDetectSettingGridLayout, 'push');
            app.PredetectTabVoltageAutoButton.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabVoltageAutoButtonPushed, true);
            app.PredetectTabVoltageAutoButton.Layout.Row = 5;
            app.PredetectTabVoltageAutoButton.Layout.Column = 1;
            app.PredetectTabVoltageAutoButton.Text = 'Auto';

            % Create PredetectTabSlopeAutoCheckBox
            app.PredetectTabSlopeAutoCheckBox = uicheckbox(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabSlopeAutoCheckBox.ValueChangedFcn = createCallbackFcn(app, @PredetectTabSlopeAutoCheckBoxValueChanged, true);
            app.PredetectTabSlopeAutoCheckBox.Text = 'Auto';
            app.PredetectTabSlopeAutoCheckBox.Layout.Row = 6;
            app.PredetectTabSlopeAutoCheckBox.Layout.Column = 2;
            app.PredetectTabSlopeAutoCheckBox.Value = true;

            % Create PredetectTabSlopeAutoButton
            app.PredetectTabSlopeAutoButton = uibutton(app.PredetectTabDetectSettingGridLayout, 'push');
            app.PredetectTabSlopeAutoButton.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabSlopeAutoButtonPushed, true);
            app.PredetectTabSlopeAutoButton.Layout.Row = 5;
            app.PredetectTabSlopeAutoButton.Layout.Column = 2;
            app.PredetectTabSlopeAutoButton.Text = 'Auto';

            % Create PredetectTabAdjustRWaveLabel
            app.PredetectTabAdjustRWaveLabel = uilabel(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabAdjustRWaveLabel.HorizontalAlignment = 'center';
            app.PredetectTabAdjustRWaveLabel.FontWeight = 'bold';
            app.PredetectTabAdjustRWaveLabel.Layout.Row = 7;
            app.PredetectTabAdjustRWaveLabel.Layout.Column = [1 2];
            app.PredetectTabAdjustRWaveLabel.Text = 'Adjust R Wave';

            % Create PredetectTabAdjustButtonGridLayout
            app.PredetectTabAdjustButtonGridLayout = uigridlayout(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabAdjustButtonGridLayout.ColumnWidth = {30, 22, 18, 18, 22, 30};
            app.PredetectTabAdjustButtonGridLayout.RowHeight = {'1x'};
            app.PredetectTabAdjustButtonGridLayout.ColumnSpacing = 0;
            app.PredetectTabAdjustButtonGridLayout.RowSpacing = 0;
            app.PredetectTabAdjustButtonGridLayout.Padding = [0 0 0 0];
            app.PredetectTabAdjustButtonGridLayout.Layout.Row = 10;
            app.PredetectTabAdjustButtonGridLayout.Layout.Column = [1 2];

            % Create PredetectTabAdjustSubtract5Point
            app.PredetectTabAdjustSubtract5Point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustSubtract5Point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustSubtract5PointButtonPushed, true);
            app.PredetectTabAdjustSubtract5Point.Layout.Row = 1;
            app.PredetectTabAdjustSubtract5Point.Layout.Column = 2;
            app.PredetectTabAdjustSubtract5Point.Text = '<<';

            % Create PredetectTabAdjustSubtract1Point
            app.PredetectTabAdjustSubtract1Point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustSubtract1Point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustSubtract1PointButtonPushed, true);
            app.PredetectTabAdjustSubtract1Point.Layout.Row = 1;
            app.PredetectTabAdjustSubtract1Point.Layout.Column = 3;
            app.PredetectTabAdjustSubtract1Point.Text = '<';

            % Create PredetectTabAdjustAdd1Point
            app.PredetectTabAdjustAdd1Point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustAdd1Point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustAdd1PointButtonPushed, true);
            app.PredetectTabAdjustAdd1Point.Layout.Row = 1;
            app.PredetectTabAdjustAdd1Point.Layout.Column = 4;
            app.PredetectTabAdjustAdd1Point.Text = '>';

            % Create PredetectTabAdjustAdd5Point
            app.PredetectTabAdjustAdd5Point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustAdd5Point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustAdd5PointButtonPushed, true);
            app.PredetectTabAdjustAdd5Point.Layout.Row = 1;
            app.PredetectTabAdjustAdd5Point.Layout.Column = 5;
            app.PredetectTabAdjustAdd5Point.Text = '>>';

            % Create PredetectTabAdjustSubtract20point
            app.PredetectTabAdjustSubtract20point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustSubtract20point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustSubtract20pointButtonPushed, true);
            app.PredetectTabAdjustSubtract20point.Layout.Row = 1;
            app.PredetectTabAdjustSubtract20point.Layout.Column = 1;
            app.PredetectTabAdjustSubtract20point.Text = '<<<';

            % Create PredetectTabAdjustAdd20point
            app.PredetectTabAdjustAdd20point = uibutton(app.PredetectTabAdjustButtonGridLayout, 'push');
            app.PredetectTabAdjustAdd20point.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabAdjustAdd20pointButtonPushed, true);
            app.PredetectTabAdjustAdd20point.Layout.Row = 1;
            app.PredetectTabAdjustAdd20point.Layout.Column = 6;
            app.PredetectTabAdjustAdd20point.Text = '>>>';

            % Create PredetectTabRangeSpinner
            app.PredetectTabRangeSpinner = uispinner(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabRangeSpinner.Step = 0.05;
            app.PredetectTabRangeSpinner.Limits = [0.01 2];
            app.PredetectTabRangeSpinner.ValueDisplayFormat = '%.2f';
            app.PredetectTabRangeSpinner.ValueChangedFcn = createCallbackFcn(app, @PredetectTabRangeSpinnerValueChanged, true);
            app.PredetectTabRangeSpinner.Layout.Row = 8;
            app.PredetectTabRangeSpinner.Layout.Column = 2;
            app.PredetectTabRangeSpinner.Value = 1.3;

            % Create PredetectTabRangeLabel
            app.PredetectTabRangeLabel = uilabel(app.PredetectTabDetectSettingGridLayout);
            app.PredetectTabRangeLabel.HorizontalAlignment = 'center';
            app.PredetectTabRangeLabel.Layout.Row = 8;
            app.PredetectTabRangeLabel.Layout.Column = 1;
            app.PredetectTabRangeLabel.Text = 'Range';

            % Create PredetectTabPlotSettingGridLayout
            app.PredetectTabPlotSettingGridLayout = uigridlayout(app.PredetectTabMainGridLayout);
            app.PredetectTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.PredetectTabPlotSettingGridLayout.RowHeight = {20, 20, 20, '1x'};
            app.PredetectTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.PredetectTabPlotSettingGridLayout.RowSpacing = 0;
            app.PredetectTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.PredetectTabPlotSettingGridLayout.Layout.Row = 2;
            app.PredetectTabPlotSettingGridLayout.Layout.Column = 1;

            % Create PredetectTabSignalGridLayout
            app.PredetectTabSignalGridLayout = uigridlayout(app.PredetectTabPlotSettingGridLayout);
            app.PredetectTabSignalGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.PredetectTabSignalGridLayout.RowHeight = {'1x'};
            app.PredetectTabSignalGridLayout.ColumnSpacing = 0;
            app.PredetectTabSignalGridLayout.RowSpacing = 0;
            app.PredetectTabSignalGridLayout.Padding = [0 0 0 0];
            app.PredetectTabSignalGridLayout.Layout.Row = 2;
            app.PredetectTabSignalGridLayout.Layout.Column = 1;

            % Create PredetectTabSignalEditField
            app.PredetectTabSignalEditField = uieditfield(app.PredetectTabSignalGridLayout, 'numeric');
            app.PredetectTabSignalEditField.Limits = [0 Inf];
            app.PredetectTabSignalEditField.HorizontalAlignment = 'center';
            app.PredetectTabSignalEditField.Layout.Row = 1;
            app.PredetectTabSignalEditField.Layout.Column = 4;

            % Create PredetectTabSignalSubtract5min
            app.PredetectTabSignalSubtract5min = uibutton(app.PredetectTabSignalGridLayout, 'push');
            app.PredetectTabSignalSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabSignalSubtract5minButtonPushed, true);
            app.PredetectTabSignalSubtract5min.Layout.Row = 1;
            app.PredetectTabSignalSubtract5min.Layout.Column = 2;
            app.PredetectTabSignalSubtract5min.Text = '-5min';

            % Create PredetectTabSignalSubtract1min
            app.PredetectTabSignalSubtract1min = uibutton(app.PredetectTabSignalGridLayout, 'push');
            app.PredetectTabSignalSubtract1min.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabSignalSubtract1minButtonPushed, true);
            app.PredetectTabSignalSubtract1min.Layout.Row = 1;
            app.PredetectTabSignalSubtract1min.Layout.Column = 3;
            app.PredetectTabSignalSubtract1min.Text = '-1min';

            % Create PredetectTabSignalAdd1min
            app.PredetectTabSignalAdd1min = uibutton(app.PredetectTabSignalGridLayout, 'push');
            app.PredetectTabSignalAdd1min.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabSignalAdd1minButtonPushed, true);
            app.PredetectTabSignalAdd1min.Layout.Row = 1;
            app.PredetectTabSignalAdd1min.Layout.Column = 5;
            app.PredetectTabSignalAdd1min.Text = '+1min';

            % Create PredetectTabSignalAdd5min
            app.PredetectTabSignalAdd5min = uibutton(app.PredetectTabSignalGridLayout, 'push');
            app.PredetectTabSignalAdd5min.ButtonPushedFcn = createCallbackFcn(app, @PredetectTabSignalAdd5minButtonPushed, true);
            app.PredetectTabSignalAdd5min.Layout.Row = 1;
            app.PredetectTabSignalAdd5min.Layout.Column = 6;
            app.PredetectTabSignalAdd5min.Text = '+5min';

            % Create PredetectTabSignalStartTimesLabel
            app.PredetectTabSignalStartTimesLabel = uilabel(app.PredetectTabSignalGridLayout);
            app.PredetectTabSignalStartTimesLabel.HorizontalAlignment = 'right';
            app.PredetectTabSignalStartTimesLabel.Layout.Row = 1;
            app.PredetectTabSignalStartTimesLabel.Layout.Column = 1;
            app.PredetectTabSignalStartTimesLabel.Text = 'Start Time (s) : ';

            % Create PredetectTabPlotSettingLabel
            app.PredetectTabPlotSettingLabel = uilabel(app.PredetectTabPlotSettingGridLayout);
            app.PredetectTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.PredetectTabPlotSettingLabel.FontWeight = 'bold';
            app.PredetectTabPlotSettingLabel.Layout.Row = 1;
            app.PredetectTabPlotSettingLabel.Layout.Column = 1;
            app.PredetectTabPlotSettingLabel.Text = 'Plot Setting';

            % Create PredetectTabPlotSignalGridLayout
            app.PredetectTabPlotSignalGridLayout = uigridlayout(app.PredetectTabMainGridLayout);
            app.PredetectTabPlotSignalGridLayout.ColumnWidth = {'1.8x', '1x'};
            app.PredetectTabPlotSignalGridLayout.RowHeight = {20, 20};
            app.PredetectTabPlotSignalGridLayout.ColumnSpacing = 3;
            app.PredetectTabPlotSignalGridLayout.RowSpacing = 0;
            app.PredetectTabPlotSignalGridLayout.Padding = [0 0 0 0];
            app.PredetectTabPlotSignalGridLayout.Layout.Row = 2;
            app.PredetectTabPlotSignalGridLayout.Layout.Column = 2;

            % Create PredetectTabPlotSignalLabel
            app.PredetectTabPlotSignalLabel = uilabel(app.PredetectTabPlotSignalGridLayout);
            app.PredetectTabPlotSignalLabel.HorizontalAlignment = 'center';
            app.PredetectTabPlotSignalLabel.FontWeight = 'bold';
            app.PredetectTabPlotSignalLabel.Layout.Row = 1;
            app.PredetectTabPlotSignalLabel.Layout.Column = [1 2];
            app.PredetectTabPlotSignalLabel.Text = 'Plot Signal';

            % Create PredetectTabPlotAutoCheckBox
            app.PredetectTabPlotAutoCheckBox = uicheckbox(app.PredetectTabPlotSignalGridLayout);
            app.PredetectTabPlotAutoCheckBox.Text = 'Auto';
            app.PredetectTabPlotAutoCheckBox.Layout.Row = 2;
            app.PredetectTabPlotAutoCheckBox.Layout.Column = 2;
            app.PredetectTabPlotAutoCheckBox.Value = true;

            % Create PredetectTabPlotSignalButton
            app.PredetectTabPlotSignalButton = uibutton(app.PredetectTabPlotSignalGridLayout, 'push');
            app.PredetectTabPlotSignalButton.HorizontalAlignment = 'left';
            app.PredetectTabPlotSignalButton.Layout.Row = 2;
            app.PredetectTabPlotSignalButton.Layout.Column = 1;
            app.PredetectTabPlotSignalButton.Text = 'Plot Signal';

            % Create DetectTab
            app.DetectTab = uitab(app.TabGroup);
            app.DetectTab.Title = 'Detect';
            app.DetectTab.ButtonDownFcn = createCallbackFcn(app, @DetectTabButtonDown, true);

            % Create DetectTabMainGridLayout
            app.DetectTabMainGridLayout = uigridlayout(app.DetectTab);
            app.DetectTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.DetectTabMainGridLayout.RowHeight = {'1x', 80};
            app.DetectTabMainGridLayout.ColumnSpacing = 0;
            app.DetectTabMainGridLayout.RowSpacing = 0;
            app.DetectTabMainGridLayout.Padding = [5 5 5 5];

            % Create DetectTabUIAxesGridLayout
            app.DetectTabUIAxesGridLayout = uigridlayout(app.DetectTabMainGridLayout);
            app.DetectTabUIAxesGridLayout.ColumnWidth = {'1x'};
            app.DetectTabUIAxesGridLayout.RowHeight = {20, '1x', '1x', '1x', '1x', '1x', 20};
            app.DetectTabUIAxesGridLayout.ColumnSpacing = 0;
            app.DetectTabUIAxesGridLayout.RowSpacing = 0;
            app.DetectTabUIAxesGridLayout.Padding = [0 0 0 0];
            app.DetectTabUIAxesGridLayout.Layout.Row = 1;
            app.DetectTabUIAxesGridLayout.Layout.Column = 1;
            app.DetectTabUIAxesGridLayout.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create DetectTabSignalUIAxes1
            app.DetectTabSignalUIAxes1 = uiaxes(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalUIAxes1.Layout.Row = 2;
            app.DetectTabSignalUIAxes1.Layout.Column = 1;

            % Create DetectTabSignalUIAxes4
            app.DetectTabSignalUIAxes4 = uiaxes(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalUIAxes4.Layout.Row = 5;
            app.DetectTabSignalUIAxes4.Layout.Column = 1;

            % Create DetectTabSignalUIAxes5
            app.DetectTabSignalUIAxes5 = uiaxes(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalUIAxes5.Layout.Row = 6;
            app.DetectTabSignalUIAxes5.Layout.Column = 1;

            % Create DetectTabSignalUIAxes3
            app.DetectTabSignalUIAxes3 = uiaxes(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalUIAxes3.Layout.Row = 4;
            app.DetectTabSignalUIAxes3.Layout.Column = 1;

            % Create DetectTabSignalUIAxes2
            app.DetectTabSignalUIAxes2 = uiaxes(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalUIAxes2.Layout.Row = 3;
            app.DetectTabSignalUIAxes2.Layout.Column = 1;

            % Create DetectTabSignalTitleLabel
            app.DetectTabSignalTitleLabel = uilabel(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalTitleLabel.HorizontalAlignment = 'center';
            app.DetectTabSignalTitleLabel.FontWeight = 'bold';
            app.DetectTabSignalTitleLabel.Layout.Row = 1;
            app.DetectTabSignalTitleLabel.Layout.Column = 1;
            app.DetectTabSignalTitleLabel.Text = 'Signal';

            % Create DetectTabSignalTimeLabel
            app.DetectTabSignalTimeLabel = uilabel(app.DetectTabUIAxesGridLayout);
            app.DetectTabSignalTimeLabel.HorizontalAlignment = 'center';
            app.DetectTabSignalTimeLabel.Layout.Row = 7;
            app.DetectTabSignalTimeLabel.Layout.Column = 1;
            app.DetectTabSignalTimeLabel.Text = 'Time (s)';

            % Create DetectTabPlotSettingGridLayout
            app.DetectTabPlotSettingGridLayout = uigridlayout(app.DetectTabMainGridLayout);
            app.DetectTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.DetectTabPlotSettingGridLayout.RowHeight = {20, 20, 20, '1x'};
            app.DetectTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.DetectTabPlotSettingGridLayout.RowSpacing = 0;
            app.DetectTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.DetectTabPlotSettingGridLayout.Layout.Row = 2;
            app.DetectTabPlotSettingGridLayout.Layout.Column = 1;

            % Create DetectTabSignalGridLayout
            app.DetectTabSignalGridLayout = uigridlayout(app.DetectTabPlotSettingGridLayout);
            app.DetectTabSignalGridLayout.ColumnWidth = {'1x', 50, 40, 40, 40, 50, '1x'};
            app.DetectTabSignalGridLayout.RowHeight = {'1x'};
            app.DetectTabSignalGridLayout.ColumnSpacing = 0;
            app.DetectTabSignalGridLayout.RowSpacing = 0;
            app.DetectTabSignalGridLayout.Padding = [0 0 0 0];
            app.DetectTabSignalGridLayout.Layout.Row = 2;
            app.DetectTabSignalGridLayout.Layout.Column = 1;

            % Create DetectTabSignalEditField
            app.DetectTabSignalEditField = uieditfield(app.DetectTabSignalGridLayout, 'numeric');
            app.DetectTabSignalEditField.Limits = [0 Inf];
            app.DetectTabSignalEditField.HorizontalAlignment = 'center';
            app.DetectTabSignalEditField.Layout.Row = 1;
            app.DetectTabSignalEditField.Layout.Column = 4;

            % Create DetectTabSignalSubtract5min
            app.DetectTabSignalSubtract5min = uibutton(app.DetectTabSignalGridLayout, 'push');
            app.DetectTabSignalSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalSubtract5minButtonPushed, true);
            app.DetectTabSignalSubtract5min.Layout.Row = 1;
            app.DetectTabSignalSubtract5min.Layout.Column = 2;
            app.DetectTabSignalSubtract5min.Text = '-5min';

            % Create DetectTabSignalSubtract1min
            app.DetectTabSignalSubtract1min = uibutton(app.DetectTabSignalGridLayout, 'push');
            app.DetectTabSignalSubtract1min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalSubtract1minButtonPushed, true);
            app.DetectTabSignalSubtract1min.Layout.Row = 1;
            app.DetectTabSignalSubtract1min.Layout.Column = 3;
            app.DetectTabSignalSubtract1min.Text = '-1min';

            % Create DetectTabSignalAdd1min
            app.DetectTabSignalAdd1min = uibutton(app.DetectTabSignalGridLayout, 'push');
            app.DetectTabSignalAdd1min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalAdd1minButtonPushed, true);
            app.DetectTabSignalAdd1min.Layout.Row = 1;
            app.DetectTabSignalAdd1min.Layout.Column = 5;
            app.DetectTabSignalAdd1min.Text = '+1min';

            % Create DetectTabSignalAdd5min
            app.DetectTabSignalAdd5min = uibutton(app.DetectTabSignalGridLayout, 'push');
            app.DetectTabSignalAdd5min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalAdd5minButtonPushed, true);
            app.DetectTabSignalAdd5min.Layout.Row = 1;
            app.DetectTabSignalAdd5min.Layout.Column = 6;
            app.DetectTabSignalAdd5min.Text = '+5min';

            % Create DetectTabSignalStartTimesLabel
            app.DetectTabSignalStartTimesLabel = uilabel(app.DetectTabSignalGridLayout);
            app.DetectTabSignalStartTimesLabel.HorizontalAlignment = 'right';
            app.DetectTabSignalStartTimesLabel.Layout.Row = 1;
            app.DetectTabSignalStartTimesLabel.Layout.Column = 1;
            app.DetectTabSignalStartTimesLabel.Text = 'Start Time (s) : ';

            % Create DetectTabPlotSettingLabel
            app.DetectTabPlotSettingLabel = uilabel(app.DetectTabPlotSettingGridLayout);
            app.DetectTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.DetectTabPlotSettingLabel.FontWeight = 'bold';
            app.DetectTabPlotSettingLabel.Layout.Row = 1;
            app.DetectTabPlotSettingLabel.Layout.Column = 1;
            app.DetectTabPlotSettingLabel.Text = 'Plot Setting';

            % Create DetectTabPreviewGridLayout
            app.DetectTabPreviewGridLayout = uigridlayout(app.DetectTabPlotSettingGridLayout);
            app.DetectTabPreviewGridLayout.ColumnWidth = {'1x', 32, 40, 40, 40, 32, '1x'};
            app.DetectTabPreviewGridLayout.RowHeight = {'1x'};
            app.DetectTabPreviewGridLayout.ColumnSpacing = 0;
            app.DetectTabPreviewGridLayout.RowSpacing = 0;
            app.DetectTabPreviewGridLayout.Padding = [0 0 0 0];
            app.DetectTabPreviewGridLayout.Layout.Row = 3;
            app.DetectTabPreviewGridLayout.Layout.Column = 1;

            % Create DetectTabSignalPreviewEditField
            app.DetectTabSignalPreviewEditField = uieditfield(app.DetectTabPreviewGridLayout, 'numeric');
            app.DetectTabSignalPreviewEditField.Limits = [0 Inf];
            app.DetectTabSignalPreviewEditField.ValueChangedFcn = createCallbackFcn(app, @DetectTabSignalPreviewEditFieldValueChanged, true);
            app.DetectTabSignalPreviewEditField.HorizontalAlignment = 'center';
            app.DetectTabSignalPreviewEditField.Layout.Row = 1;
            app.DetectTabSignalPreviewEditField.Layout.Column = 4;

            % Create DetectTabSignalPreviewSubtract5min
            app.DetectTabSignalPreviewSubtract5min = uibutton(app.DetectTabPreviewGridLayout, 'push');
            app.DetectTabSignalPreviewSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalPreviewSubtract5minButtonPushed, true);
            app.DetectTabSignalPreviewSubtract5min.Layout.Row = 1;
            app.DetectTabSignalPreviewSubtract5min.Layout.Column = 3;
            app.DetectTabSignalPreviewSubtract5min.Text = '-5min';

            % Create DetectTabSignalPreviewAdd5min
            app.DetectTabSignalPreviewAdd5min = uibutton(app.DetectTabPreviewGridLayout, 'push');
            app.DetectTabSignalPreviewAdd5min.ButtonPushedFcn = createCallbackFcn(app, @DetectTabSignalPreviewAdd5minButtonPushed, true);
            app.DetectTabSignalPreviewAdd5min.Layout.Row = 1;
            app.DetectTabSignalPreviewAdd5min.Layout.Column = 5;
            app.DetectTabSignalPreviewAdd5min.Text = '+5min';

            % Create DetectTabSignalPreviewTimesLabel
            app.DetectTabSignalPreviewTimesLabel = uilabel(app.DetectTabPreviewGridLayout);
            app.DetectTabSignalPreviewTimesLabel.HorizontalAlignment = 'right';
            app.DetectTabSignalPreviewTimesLabel.Layout.Row = 1;
            app.DetectTabSignalPreviewTimesLabel.Layout.Column = 1;
            app.DetectTabSignalPreviewTimesLabel.Text = 'Preview Time (s) : ';

            % Create DetectTabConfirmButtonGridLayout
            app.DetectTabConfirmButtonGridLayout = uigridlayout(app.DetectTabPreviewGridLayout);
            app.DetectTabConfirmButtonGridLayout.ColumnWidth = {50, '1x'};
            app.DetectTabConfirmButtonGridLayout.RowHeight = {'1x'};
            app.DetectTabConfirmButtonGridLayout.ColumnSpacing = 0;
            app.DetectTabConfirmButtonGridLayout.RowSpacing = 0;
            app.DetectTabConfirmButtonGridLayout.Padding = [0 0 0 0];
            app.DetectTabConfirmButtonGridLayout.Layout.Row = 1;
            app.DetectTabConfirmButtonGridLayout.Layout.Column = [6 7];

            % Create DetectTabConfirmButton
            app.DetectTabConfirmButton = uibutton(app.DetectTabConfirmButtonGridLayout, 'push');
            app.DetectTabConfirmButton.ButtonPushedFcn = createCallbackFcn(app, @DetectTabConfirmButtonPushed, true);
            app.DetectTabConfirmButton.Layout.Row = 1;
            app.DetectTabConfirmButton.Layout.Column = 1;
            app.DetectTabConfirmButton.Text = 'Confirm';

            % Create DetectTabPlotSignalGridLayout
            app.DetectTabPlotSignalGridLayout = uigridlayout(app.DetectTabMainGridLayout);
            app.DetectTabPlotSignalGridLayout.ColumnWidth = {'1.8x', '1x'};
            app.DetectTabPlotSignalGridLayout.RowHeight = {20, 20, 20, 20};
            app.DetectTabPlotSignalGridLayout.ColumnSpacing = 3;
            app.DetectTabPlotSignalGridLayout.RowSpacing = 0;
            app.DetectTabPlotSignalGridLayout.Padding = [0 0 0 0];
            app.DetectTabPlotSignalGridLayout.Layout.Row = 2;
            app.DetectTabPlotSignalGridLayout.Layout.Column = 2;

            % Create DetectTabPlotSignalLabel
            app.DetectTabPlotSignalLabel = uilabel(app.DetectTabPlotSignalGridLayout);
            app.DetectTabPlotSignalLabel.HorizontalAlignment = 'center';
            app.DetectTabPlotSignalLabel.FontWeight = 'bold';
            app.DetectTabPlotSignalLabel.Layout.Row = 1;
            app.DetectTabPlotSignalLabel.Layout.Column = [1 2];
            app.DetectTabPlotSignalLabel.Text = 'Plot Signal';

            % Create DetectTabPlotAutoCheckBox
            app.DetectTabPlotAutoCheckBox = uicheckbox(app.DetectTabPlotSignalGridLayout);
            app.DetectTabPlotAutoCheckBox.Text = 'Auto';
            app.DetectTabPlotAutoCheckBox.Layout.Row = 2;
            app.DetectTabPlotAutoCheckBox.Layout.Column = 2;
            app.DetectTabPlotAutoCheckBox.Value = true;

            % Create DetectTabPlotSignalButton
            app.DetectTabPlotSignalButton = uibutton(app.DetectTabPlotSignalGridLayout, 'push');
            app.DetectTabPlotSignalButton.ButtonPushedFcn = createCallbackFcn(app, @DetectTabPlotSignalButtonPushed, true);
            app.DetectTabPlotSignalButton.HorizontalAlignment = 'left';
            app.DetectTabPlotSignalButton.Layout.Row = 2;
            app.DetectTabPlotSignalButton.Layout.Column = 1;
            app.DetectTabPlotSignalButton.Text = 'Plot Signal';

            % Create DetectTabShowButtonGroup
            app.DetectTabShowButtonGroup = uibuttongroup(app.DetectTabPlotSignalGridLayout);
            app.DetectTabShowButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @DetectTabShowButtonGroupSelectionChanged, true);
            app.DetectTabShowButtonGroup.BorderType = 'none';
            app.DetectTabShowButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DetectTabShowButtonGroup.Layout.Row = [3 4];
            app.DetectTabShowButtonGroup.Layout.Column = [1 2];

            % Create DetectTabShowECGSignalButton
            app.DetectTabShowECGSignalButton = uiradiobutton(app.DetectTabShowButtonGroup);
            app.DetectTabShowECGSignalButton.Text = 'Show ECG Signal';
            app.DetectTabShowECGSignalButton.Position = [4 20 118 22];

            % Create DetectTabShowFitnessButton
            app.DetectTabShowFitnessButton = uiradiobutton(app.DetectTabShowButtonGroup);
            app.DetectTabShowFitnessButton.Text = 'Show Fitness';
            app.DetectTabShowFitnessButton.Position = [4 1 94 22];
            app.DetectTabShowFitnessButton.Value = true;

            % Create DetectTabSettingsGridLayout
            app.DetectTabSettingsGridLayout = uigridlayout(app.DetectTabMainGridLayout);
            app.DetectTabSettingsGridLayout.RowHeight = {20, 20, '1x', 20, 20, 20, 20, 20, 20, 20, 20};
            app.DetectTabSettingsGridLayout.ColumnSpacing = 0;
            app.DetectTabSettingsGridLayout.RowSpacing = 0;
            app.DetectTabSettingsGridLayout.Padding = [0 0 0 0];
            app.DetectTabSettingsGridLayout.Layout.Row = 1;
            app.DetectTabSettingsGridLayout.Layout.Column = 2;

            % Create DdetectTabThresholdLabel
            app.DdetectTabThresholdLabel = uilabel(app.DetectTabSettingsGridLayout);
            app.DdetectTabThresholdLabel.HorizontalAlignment = 'center';
            app.DdetectTabThresholdLabel.FontWeight = 'bold';
            app.DdetectTabThresholdLabel.Layout.Row = 1;
            app.DdetectTabThresholdLabel.Layout.Column = [1 2];
            app.DdetectTabThresholdLabel.Text = 'Threshold (%)';

            % Create DetectTabFitLabel
            app.DetectTabFitLabel = uilabel(app.DetectTabSettingsGridLayout);
            app.DetectTabFitLabel.HorizontalAlignment = 'center';
            app.DetectTabFitLabel.Layout.Row = 2;
            app.DetectTabFitLabel.Layout.Column = 1;
            app.DetectTabFitLabel.Text = 'Fit';

            % Create DetectTabFitSlopeLabel
            app.DetectTabFitSlopeLabel = uilabel(app.DetectTabSettingsGridLayout);
            app.DetectTabFitSlopeLabel.HorizontalAlignment = 'center';
            app.DetectTabFitSlopeLabel.Layout.Row = 2;
            app.DetectTabFitSlopeLabel.Layout.Column = 2;
            app.DetectTabFitSlopeLabel.Text = 'Slope';

            % Create DetectTabFitSlider
            app.DetectTabFitSlider = uislider(app.DetectTabSettingsGridLayout);
            app.DetectTabFitSlider.Orientation = 'vertical';
            app.DetectTabFitSlider.ValueChangingFcn = createCallbackFcn(app, @DetectTabFitSliderValueChanging, true);
            app.DetectTabFitSlider.Layout.Row = 3;
            app.DetectTabFitSlider.Layout.Column = 1;

            % Create DetectTabFitSlopeSlider
            app.DetectTabFitSlopeSlider = uislider(app.DetectTabSettingsGridLayout);
            app.DetectTabFitSlopeSlider.Orientation = 'vertical';
            app.DetectTabFitSlopeSlider.ValueChangingFcn = createCallbackFcn(app, @DetectTabFitSlopeSliderValueChanging, true);
            app.DetectTabFitSlopeSlider.Layout.Row = 3;
            app.DetectTabFitSlopeSlider.Layout.Column = 2;

            % Create DetectTabFitSpinner
            app.DetectTabFitSpinner = uispinner(app.DetectTabSettingsGridLayout);
            app.DetectTabFitSpinner.ValueChangingFcn = createCallbackFcn(app, @DetectTabFitSpinnerValueChanging, true);
            app.DetectTabFitSpinner.Limits = [0 100];
            app.DetectTabFitSpinner.Layout.Row = 4;
            app.DetectTabFitSpinner.Layout.Column = 1;

            % Create DetectTabFitSlopeSpinner
            app.DetectTabFitSlopeSpinner = uispinner(app.DetectTabSettingsGridLayout);
            app.DetectTabFitSlopeSpinner.ValueChangingFcn = createCallbackFcn(app, @DetectTabFitSlopeSpinnerValueChanging, true);
            app.DetectTabFitSlopeSpinner.Limits = [0 100];
            app.DetectTabFitSlopeSpinner.Layout.Row = 4;
            app.DetectTabFitSlopeSpinner.Layout.Column = 2;

            % Create DetectTabFitAutoButton
            app.DetectTabFitAutoButton = uibutton(app.DetectTabSettingsGridLayout, 'push');
            app.DetectTabFitAutoButton.ButtonPushedFcn = createCallbackFcn(app, @DetectTabFitAutoButtonPushed, true);
            app.DetectTabFitAutoButton.Layout.Row = 5;
            app.DetectTabFitAutoButton.Layout.Column = 1;
            app.DetectTabFitAutoButton.Text = 'Auto';

            % Create DetectTabFitSlopeAutoButton
            app.DetectTabFitSlopeAutoButton = uibutton(app.DetectTabSettingsGridLayout, 'push');
            app.DetectTabFitSlopeAutoButton.ButtonPushedFcn = createCallbackFcn(app, @DetectTabFitSlopeAutoButtonPushed, true);
            app.DetectTabFitSlopeAutoButton.Layout.Row = 5;
            app.DetectTabFitSlopeAutoButton.Layout.Column = 2;
            app.DetectTabFitSlopeAutoButton.Text = 'Auto';

            % Create DetectTabLearningRateLabel
            app.DetectTabLearningRateLabel = uilabel(app.DetectTabSettingsGridLayout);
            app.DetectTabLearningRateLabel.HorizontalAlignment = 'center';
            app.DetectTabLearningRateLabel.FontWeight = 'bold';
            app.DetectTabLearningRateLabel.Layout.Row = 6;
            app.DetectTabLearningRateLabel.Layout.Column = [1 2];
            app.DetectTabLearningRateLabel.Text = 'Learning Rate (%)';

            % Create DetectTabLearningRateSpinner
            app.DetectTabLearningRateSpinner = uispinner(app.DetectTabSettingsGridLayout);
            app.DetectTabLearningRateSpinner.Limits = [0 100];
            app.DetectTabLearningRateSpinner.ValueChangedFcn = createCallbackFcn(app, @DetectTabLearningRateSpinnerValueChanged, true);
            app.DetectTabLearningRateSpinner.Layout.Row = 7;
            app.DetectTabLearningRateSpinner.Layout.Column = 1;
            app.DetectTabLearningRateSpinner.Value = 30;

            % Create DetectTabLearningRateAutoButton
            app.DetectTabLearningRateAutoButton = uibutton(app.DetectTabSettingsGridLayout, 'push');
            app.DetectTabLearningRateAutoButton.ButtonPushedFcn = createCallbackFcn(app, @DetectTabLearningRateAutoButtonPushed, true);
            app.DetectTabLearningRateAutoButton.Layout.Row = 7;
            app.DetectTabLearningRateAutoButton.Layout.Column = 2;
            app.DetectTabLearningRateAutoButton.Text = 'Auto';

            % Create DetectAllButton
            app.DetectAllButton = uibutton(app.DetectTabSettingsGridLayout, 'push');
            app.DetectAllButton.ButtonPushedFcn = createCallbackFcn(app, @DetectAllButtonPushed, true);
            app.DetectAllButton.FontSize = 14;
            app.DetectAllButton.FontWeight = 'bold';
            app.DetectAllButton.FontColor = [1 0 0];
            app.DetectAllButton.Layout.Row = [10 11];
            app.DetectAllButton.Layout.Column = [1 2];
            app.DetectAllButton.Text = 'Detect All';

            % Create VerifyTab
            app.VerifyTab = uitab(app.TabGroup);
            app.VerifyTab.Title = 'Verify';
            app.VerifyTab.ButtonDownFcn = createCallbackFcn(app, @VerifyTabButtonDown, true);

            % Create VerifyTabMainGridLayout
            app.VerifyTabMainGridLayout = uigridlayout(app.VerifyTab);
            app.VerifyTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.VerifyTabMainGridLayout.RowHeight = {'1x', 80};
            app.VerifyTabMainGridLayout.ColumnSpacing = 0;
            app.VerifyTabMainGridLayout.RowSpacing = 0;
            app.VerifyTabMainGridLayout.Padding = [5 5 5 5];

            % Create VerifyTabUIAxesGridLayout
            app.VerifyTabUIAxesGridLayout = uigridlayout(app.VerifyTabMainGridLayout);
            app.VerifyTabUIAxesGridLayout.ColumnWidth = {'1x'};
            app.VerifyTabUIAxesGridLayout.RowHeight = {20, '1x', '1x', '1x', '1x', '1x', 20};
            app.VerifyTabUIAxesGridLayout.ColumnSpacing = 0;
            app.VerifyTabUIAxesGridLayout.RowSpacing = 0;
            app.VerifyTabUIAxesGridLayout.Padding = [0 0 0 0];
            app.VerifyTabUIAxesGridLayout.Layout.Row = 1;
            app.VerifyTabUIAxesGridLayout.Layout.Column = 1;
            app.VerifyTabUIAxesGridLayout.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create VerifyTabSignalUIAxes1
            app.VerifyTabSignalUIAxes1 = uiaxes(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalUIAxes1.Layout.Row = 2;
            app.VerifyTabSignalUIAxes1.Layout.Column = 1;
            app.VerifyTabSignalUIAxes1.ButtonDownFcn = createCallbackFcn(app, @VerifyTabSignalUIAxes1ButtonDown, true);

            % Create VerifyTabSignalUIAxes4
            app.VerifyTabSignalUIAxes4 = uiaxes(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalUIAxes4.Layout.Row = 5;
            app.VerifyTabSignalUIAxes4.Layout.Column = 1;
            app.VerifyTabSignalUIAxes4.ButtonDownFcn = createCallbackFcn(app, @VerifyTabSignalUIAxes4ButtonDown, true);

            % Create VerifyTabSignalUIAxes2
            app.VerifyTabSignalUIAxes2 = uiaxes(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalUIAxes2.Layout.Row = 3;
            app.VerifyTabSignalUIAxes2.Layout.Column = 1;
            app.VerifyTabSignalUIAxes2.ButtonDownFcn = createCallbackFcn(app, @VerifyTabSignalUIAxes2ButtonDown, true);

            % Create VerifyTabSignalUIAxes3
            app.VerifyTabSignalUIAxes3 = uiaxes(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalUIAxes3.Layout.Row = 4;
            app.VerifyTabSignalUIAxes3.Layout.Column = 1;
            app.VerifyTabSignalUIAxes3.ButtonDownFcn = createCallbackFcn(app, @VerifyTabSignalUIAxes3ButtonDown, true);

            % Create VerifyTabSignalUIAxes5
            app.VerifyTabSignalUIAxes5 = uiaxes(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalUIAxes5.Layout.Row = 6;
            app.VerifyTabSignalUIAxes5.Layout.Column = 1;
            app.VerifyTabSignalUIAxes5.ButtonDownFcn = createCallbackFcn(app, @VerifyTabSignalUIAxes5ButtonDown, true);

            % Create VerifyTabSignalTitleLabel
            app.VerifyTabSignalTitleLabel = uilabel(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalTitleLabel.HorizontalAlignment = 'center';
            app.VerifyTabSignalTitleLabel.FontWeight = 'bold';
            app.VerifyTabSignalTitleLabel.Layout.Row = 1;
            app.VerifyTabSignalTitleLabel.Layout.Column = 1;
            app.VerifyTabSignalTitleLabel.Text = 'Signal';

            % Create VerifyTabSignalTimeLabel
            app.VerifyTabSignalTimeLabel = uilabel(app.VerifyTabUIAxesGridLayout);
            app.VerifyTabSignalTimeLabel.HorizontalAlignment = 'center';
            app.VerifyTabSignalTimeLabel.Layout.Row = 7;
            app.VerifyTabSignalTimeLabel.Layout.Column = 1;
            app.VerifyTabSignalTimeLabel.Text = 'Time (s)';

            % Create VerifyTabPlotSettingGridLayout
            app.VerifyTabPlotSettingGridLayout = uigridlayout(app.VerifyTabMainGridLayout);
            app.VerifyTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.VerifyTabPlotSettingGridLayout.RowHeight = {20, 20, 20, 20};
            app.VerifyTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.VerifyTabPlotSettingGridLayout.RowSpacing = 0;
            app.VerifyTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.VerifyTabPlotSettingGridLayout.Layout.Row = 2;
            app.VerifyTabPlotSettingGridLayout.Layout.Column = 1;

            % Create VerifyTabSignalGridLayout
            app.VerifyTabSignalGridLayout = uigridlayout(app.VerifyTabPlotSettingGridLayout);
            app.VerifyTabSignalGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.VerifyTabSignalGridLayout.RowHeight = {'1x'};
            app.VerifyTabSignalGridLayout.ColumnSpacing = 0;
            app.VerifyTabSignalGridLayout.RowSpacing = 0;
            app.VerifyTabSignalGridLayout.Padding = [0 0 0 0];
            app.VerifyTabSignalGridLayout.Layout.Row = 2;
            app.VerifyTabSignalGridLayout.Layout.Column = 1;

            % Create VerifyTabSignalEditField
            app.VerifyTabSignalEditField = uieditfield(app.VerifyTabSignalGridLayout, 'numeric');
            app.VerifyTabSignalEditField.Limits = [0 Inf];
            app.VerifyTabSignalEditField.ValueChangedFcn = createCallbackFcn(app, @VerifyTabSignalEditFieldValueChanged, true);
            app.VerifyTabSignalEditField.HorizontalAlignment = 'center';
            app.VerifyTabSignalEditField.Layout.Row = 1;
            app.VerifyTabSignalEditField.Layout.Column = 4;

            % Create VerifyTabSignalSubtract5min
            app.VerifyTabSignalSubtract5min = uibutton(app.VerifyTabSignalGridLayout, 'push');
            app.VerifyTabSignalSubtract5min.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabSignalSubtract5minButtonPushed, true);
            app.VerifyTabSignalSubtract5min.Layout.Row = 1;
            app.VerifyTabSignalSubtract5min.Layout.Column = 2;
            app.VerifyTabSignalSubtract5min.Text = '-5min';

            % Create VerifyTabSignalSubtract1min
            app.VerifyTabSignalSubtract1min = uibutton(app.VerifyTabSignalGridLayout, 'push');
            app.VerifyTabSignalSubtract1min.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabSignalSubtract1minButtonPushed, true);
            app.VerifyTabSignalSubtract1min.Layout.Row = 1;
            app.VerifyTabSignalSubtract1min.Layout.Column = 3;
            app.VerifyTabSignalSubtract1min.Text = '-1min';

            % Create VerifyTabSignalAdd1min
            app.VerifyTabSignalAdd1min = uibutton(app.VerifyTabSignalGridLayout, 'push');
            app.VerifyTabSignalAdd1min.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabSignalAdd1minButtonPushed, true);
            app.VerifyTabSignalAdd1min.Layout.Row = 1;
            app.VerifyTabSignalAdd1min.Layout.Column = 5;
            app.VerifyTabSignalAdd1min.Text = '+1min';

            % Create VerifyTabSignalAdd5min
            app.VerifyTabSignalAdd5min = uibutton(app.VerifyTabSignalGridLayout, 'push');
            app.VerifyTabSignalAdd5min.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabSignalAdd5minButtonPushed, true);
            app.VerifyTabSignalAdd5min.Layout.Row = 1;
            app.VerifyTabSignalAdd5min.Layout.Column = 6;
            app.VerifyTabSignalAdd5min.Text = '+5min';

            % Create VerifyTabSignalStartTimesLabel
            app.VerifyTabSignalStartTimesLabel = uilabel(app.VerifyTabSignalGridLayout);
            app.VerifyTabSignalStartTimesLabel.HorizontalAlignment = 'right';
            app.VerifyTabSignalStartTimesLabel.Layout.Row = 1;
            app.VerifyTabSignalStartTimesLabel.Layout.Column = 1;
            app.VerifyTabSignalStartTimesLabel.Text = 'Start Time (s) : ';

            % Create VerifyTabPlotDensityGridLayout
            app.VerifyTabPlotDensityGridLayout = uigridlayout(app.VerifyTabPlotSettingGridLayout);
            app.VerifyTabPlotDensityGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.VerifyTabPlotDensityGridLayout.RowHeight = {'1x'};
            app.VerifyTabPlotDensityGridLayout.ColumnSpacing = 0;
            app.VerifyTabPlotDensityGridLayout.RowSpacing = 0;
            app.VerifyTabPlotDensityGridLayout.Padding = [0 0 0 0];
            app.VerifyTabPlotDensityGridLayout.Layout.Row = 3;
            app.VerifyTabPlotDensityGridLayout.Layout.Column = 1;

            % Create VerifyTabDensityEditField
            app.VerifyTabDensityEditField = uieditfield(app.VerifyTabPlotDensityGridLayout, 'numeric');
            app.VerifyTabDensityEditField.Limits = [5 Inf];
            app.VerifyTabDensityEditField.ValueChangedFcn = createCallbackFcn(app, @VerifyTabDensityEditFieldValueChanged, true);
            app.VerifyTabDensityEditField.HorizontalAlignment = 'center';
            app.VerifyTabDensityEditField.Layout.Row = 1;
            app.VerifyTabDensityEditField.Layout.Column = 4;
            app.VerifyTabDensityEditField.Value = 300;

            % Create VerifyTabDensitySubtract30s
            app.VerifyTabDensitySubtract30s = uibutton(app.VerifyTabPlotDensityGridLayout, 'push');
            app.VerifyTabDensitySubtract30s.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabDensitySubtract30sButtonPushed, true);
            app.VerifyTabDensitySubtract30s.Layout.Row = 1;
            app.VerifyTabDensitySubtract30s.Layout.Column = 2;
            app.VerifyTabDensitySubtract30s.Text = '-30s';

            % Create VerifytTabDensitySubtract5s
            app.VerifytTabDensitySubtract5s = uibutton(app.VerifyTabPlotDensityGridLayout, 'push');
            app.VerifytTabDensitySubtract5s.ButtonPushedFcn = createCallbackFcn(app, @VerifytTabDensitySubtract5sButtonPushed, true);
            app.VerifytTabDensitySubtract5s.Layout.Row = 1;
            app.VerifytTabDensitySubtract5s.Layout.Column = 3;
            app.VerifytTabDensitySubtract5s.Text = '-5s';

            % Create VerifyTabDensityAdd5s
            app.VerifyTabDensityAdd5s = uibutton(app.VerifyTabPlotDensityGridLayout, 'push');
            app.VerifyTabDensityAdd5s.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabDensityAdd5sButtonPushed, true);
            app.VerifyTabDensityAdd5s.Layout.Row = 1;
            app.VerifyTabDensityAdd5s.Layout.Column = 5;
            app.VerifyTabDensityAdd5s.Text = '+5s';

            % Create VerifyTabDensityAdd30s
            app.VerifyTabDensityAdd30s = uibutton(app.VerifyTabPlotDensityGridLayout, 'push');
            app.VerifyTabDensityAdd30s.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabDensityAdd30sButtonPushed, true);
            app.VerifyTabDensityAdd30s.Layout.Row = 1;
            app.VerifyTabDensityAdd30s.Layout.Column = 6;
            app.VerifyTabDensityAdd30s.Text = '+30s';

            % Create VerifyTabDensitysLabel
            app.VerifyTabDensitysLabel = uilabel(app.VerifyTabPlotDensityGridLayout);
            app.VerifyTabDensitysLabel.HorizontalAlignment = 'right';
            app.VerifyTabDensitysLabel.Layout.Row = 1;
            app.VerifyTabDensitysLabel.Layout.Column = 1;
            app.VerifyTabDensitysLabel.Text = 'Density (s) : ';

            % Create VerifyTabPlotSettingLabel
            app.VerifyTabPlotSettingLabel = uilabel(app.VerifyTabPlotSettingGridLayout);
            app.VerifyTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.VerifyTabPlotSettingLabel.FontWeight = 'bold';
            app.VerifyTabPlotSettingLabel.Layout.Row = 1;
            app.VerifyTabPlotSettingLabel.Layout.Column = 1;
            app.VerifyTabPlotSettingLabel.Text = 'Plot Setting';

            % Create VerifyTabSettingsGridLayout
            app.VerifyTabSettingsGridLayout = uigridlayout(app.VerifyTabMainGridLayout);
            app.VerifyTabSettingsGridLayout.RowHeight = {20, 20, 20, 20, 20, 20, 80, 20, 20, 20, 20, 20};
            app.VerifyTabSettingsGridLayout.ColumnSpacing = 0;
            app.VerifyTabSettingsGridLayout.RowSpacing = 0;
            app.VerifyTabSettingsGridLayout.Padding = [0 0 0 0];
            app.VerifyTabSettingsGridLayout.Layout.Row = 1;
            app.VerifyTabSettingsGridLayout.Layout.Column = 2;

            % Create VerifyTabAdjustUIAxes
            app.VerifyTabAdjustUIAxes = uiaxes(app.VerifyTabSettingsGridLayout);
            app.VerifyTabAdjustUIAxes.XTick = [];
            app.VerifyTabAdjustUIAxes.XTickLabel = '';
            app.VerifyTabAdjustUIAxes.YTick = [];
            app.VerifyTabAdjustUIAxes.YTickLabel = '';
            app.VerifyTabAdjustUIAxes.ZTick = [];
            app.VerifyTabAdjustUIAxes.ZTickLabel = '';
            app.VerifyTabAdjustUIAxes.Layout.Row = 7;
            app.VerifyTabAdjustUIAxes.Layout.Column = [1 2];

            % Create VerifyTabHRVTitleLabel
            app.VerifyTabHRVTitleLabel = uilabel(app.VerifyTabSettingsGridLayout);
            app.VerifyTabHRVTitleLabel.HorizontalAlignment = 'center';
            app.VerifyTabHRVTitleLabel.FontWeight = 'bold';
            app.VerifyTabHRVTitleLabel.Layout.Row = 1;
            app.VerifyTabHRVTitleLabel.Layout.Column = [1 2];
            app.VerifyTabHRVTitleLabel.Text = 'Heart Rate Variability';

            % Create VerifySaveNextButton
            app.VerifySaveNextButton = uibutton(app.VerifyTabSettingsGridLayout, 'push');
            app.VerifySaveNextButton.ButtonPushedFcn = createCallbackFcn(app, @VerifySaveNextButtonPushed, true);
            app.VerifySaveNextButton.FontSize = 14;
            app.VerifySaveNextButton.FontWeight = 'bold';
            app.VerifySaveNextButton.FontColor = [1 0 0];
            app.VerifySaveNextButton.Layout.Row = [11 12];
            app.VerifySaveNextButton.Layout.Column = [1 2];
            app.VerifySaveNextButton.Text = 'Save & Next';

            % Create VerifyTabHRVResetLabel
            app.VerifyTabHRVResetLabel = uilabel(app.VerifyTabSettingsGridLayout);
            app.VerifyTabHRVResetLabel.HorizontalAlignment = 'center';
            app.VerifyTabHRVResetLabel.FontWeight = 'bold';
            app.VerifyTabHRVResetLabel.Layout.Row = 5;
            app.VerifyTabHRVResetLabel.Layout.Column = [1 2];
            app.VerifyTabHRVResetLabel.Text = 'Reset Detection';

            % Create VerifyTabAdjustButtonGridLayout
            app.VerifyTabAdjustButtonGridLayout = uigridlayout(app.VerifyTabSettingsGridLayout);
            app.VerifyTabAdjustButtonGridLayout.ColumnWidth = {30, 22, 18, 18, 22, 30};
            app.VerifyTabAdjustButtonGridLayout.RowHeight = {'1x'};
            app.VerifyTabAdjustButtonGridLayout.ColumnSpacing = 0;
            app.VerifyTabAdjustButtonGridLayout.RowSpacing = 0;
            app.VerifyTabAdjustButtonGridLayout.Padding = [0 0 0 0];
            app.VerifyTabAdjustButtonGridLayout.Layout.Row = 8;
            app.VerifyTabAdjustButtonGridLayout.Layout.Column = [1 2];

            % Create VerifyTabAdjustSubtract5Point
            app.VerifyTabAdjustSubtract5Point = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustSubtract5Point.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustSubtract5PointButtonPushed, true);
            app.VerifyTabAdjustSubtract5Point.Layout.Row = 1;
            app.VerifyTabAdjustSubtract5Point.Layout.Column = 2;
            app.VerifyTabAdjustSubtract5Point.Text = '<<';

            % Create VerifyTabAdjustSubtract1Point
            app.VerifyTabAdjustSubtract1Point = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustSubtract1Point.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustSubtract1PointButtonPushed, true);
            app.VerifyTabAdjustSubtract1Point.Layout.Row = 1;
            app.VerifyTabAdjustSubtract1Point.Layout.Column = 3;
            app.VerifyTabAdjustSubtract1Point.Text = '<';

            % Create VerifyTabAdjustAdd1Point
            app.VerifyTabAdjustAdd1Point = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustAdd1Point.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustAdd1PointButtonPushed, true);
            app.VerifyTabAdjustAdd1Point.Layout.Row = 1;
            app.VerifyTabAdjustAdd1Point.Layout.Column = 4;
            app.VerifyTabAdjustAdd1Point.Text = '>';

            % Create VerifyTabAdjustAdd5Point
            app.VerifyTabAdjustAdd5Point = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustAdd5Point.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustAdd5PointButtonPushed, true);
            app.VerifyTabAdjustAdd5Point.Layout.Row = 1;
            app.VerifyTabAdjustAdd5Point.Layout.Column = 5;
            app.VerifyTabAdjustAdd5Point.Text = '>>';

            % Create VerifyTabAdjustLastpoint
            app.VerifyTabAdjustLastpoint = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustLastpoint.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustLastpointButtonPushed, true);
            app.VerifyTabAdjustLastpoint.Layout.Row = 1;
            app.VerifyTabAdjustLastpoint.Layout.Column = 1;
            app.VerifyTabAdjustLastpoint.Text = '·<<';

            % Create VerifyTabAdjustNextpoint
            app.VerifyTabAdjustNextpoint = uibutton(app.VerifyTabAdjustButtonGridLayout, 'push');
            app.VerifyTabAdjustNextpoint.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabAdjustNextpointButtonPushed, true);
            app.VerifyTabAdjustNextpoint.Layout.Row = 1;
            app.VerifyTabAdjustNextpoint.Layout.Column = 6;
            app.VerifyTabAdjustNextpoint.Text = '>>·';

            % Create VerifyTabAdjustPointEditField
            app.VerifyTabAdjustPointEditField = uieditfield(app.VerifyTabSettingsGridLayout, 'numeric');
            app.VerifyTabAdjustPointEditField.ValueDisplayFormat = '%.0f';
            app.VerifyTabAdjustPointEditField.Layout.Row = 6;
            app.VerifyTabAdjustPointEditField.Layout.Column = 1;
            app.VerifyTabAdjustPointEditField.Value = 1;

            % Create VerifyTabAdjustPointDefinitionEditField
            app.VerifyTabAdjustPointDefinitionEditField = uieditfield(app.VerifyTabSettingsGridLayout, 'text');
            app.VerifyTabAdjustPointDefinitionEditField.Editable = 'off';
            app.VerifyTabAdjustPointDefinitionEditField.Layout.Row = 6;
            app.VerifyTabAdjustPointDefinitionEditField.Layout.Column = 2;

            % Create VerifyTabAbnormalButton
            app.VerifyTabAbnormalButton = uibutton(app.VerifyTabSettingsGridLayout, 'state');
            app.VerifyTabAbnormalButton.ValueChangedFcn = createCallbackFcn(app, @VerifyTabAbnormalButtonValueChanged, true);
            app.VerifyTabAbnormalButton.Text = 'Abnormal';
            app.VerifyTabAbnormalButton.Layout.Row = 10;
            app.VerifyTabAbnormalButton.Layout.Column = 1;

            % Create VerifyTabNoWaveButton
            app.VerifyTabNoWaveButton = uibutton(app.VerifyTabSettingsGridLayout, 'state');
            app.VerifyTabNoWaveButton.ValueChangedFcn = createCallbackFcn(app, @VerifyTabNoWaveButtonValueChanged, true);
            app.VerifyTabNoWaveButton.Text = 'No Wave';
            app.VerifyTabNoWaveButton.Layout.Row = 10;
            app.VerifyTabNoWaveButton.Layout.Column = 2;

            % Create VerifyTabSemiRWaveButton
            app.VerifyTabSemiRWaveButton = uibutton(app.VerifyTabSettingsGridLayout, 'state');
            app.VerifyTabSemiRWaveButton.ValueChangedFcn = createCallbackFcn(app, @VerifyTabSemiRWaveButtonValueChanged, true);
            app.VerifyTabSemiRWaveButton.Text = 'R'' Wave';
            app.VerifyTabSemiRWaveButton.FontWeight = 'bold';
            app.VerifyTabSemiRWaveButton.Layout.Row = 9;
            app.VerifyTabSemiRWaveButton.Layout.Column = 2;

            % Create VerifyTabRWaveButton
            app.VerifyTabRWaveButton = uibutton(app.VerifyTabSettingsGridLayout, 'state');
            app.VerifyTabRWaveButton.ValueChangedFcn = createCallbackFcn(app, @VerifyTabRWaveButtonValueChanged, true);
            app.VerifyTabRWaveButton.Text = 'R Wave';
            app.VerifyTabRWaveButton.FontWeight = 'bold';
            app.VerifyTabRWaveButton.Layout.Row = 9;
            app.VerifyTabRWaveButton.Layout.Column = 1;

            % Create VerifyTabHRVSDNNGridLayout
            app.VerifyTabHRVSDNNGridLayout = uigridlayout(app.VerifyTabSettingsGridLayout);
            app.VerifyTabHRVSDNNGridLayout.ColumnWidth = {50, '1x'};
            app.VerifyTabHRVSDNNGridLayout.RowHeight = {'1x'};
            app.VerifyTabHRVSDNNGridLayout.ColumnSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout.RowSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout.Padding = [0 0 0 0];
            app.VerifyTabHRVSDNNGridLayout.Layout.Row = 2;
            app.VerifyTabHRVSDNNGridLayout.Layout.Column = [1 2];

            % Create SDNNLabel
            app.SDNNLabel = uilabel(app.VerifyTabHRVSDNNGridLayout);
            app.SDNNLabel.HorizontalAlignment = 'right';
            app.SDNNLabel.Layout.Row = 1;
            app.SDNNLabel.Layout.Column = 1;
            app.SDNNLabel.Text = 'SDNN:';

            % Create SDNNEditField
            app.SDNNEditField = uieditfield(app.VerifyTabHRVSDNNGridLayout, 'numeric');
            app.SDNNEditField.Editable = 'off';
            app.SDNNEditField.HorizontalAlignment = 'left';
            app.SDNNEditField.Layout.Row = 1;
            app.SDNNEditField.Layout.Column = 2;

            % Create VerifyTabHRVSDNNGridLayout_2
            app.VerifyTabHRVSDNNGridLayout_2 = uigridlayout(app.VerifyTabSettingsGridLayout);
            app.VerifyTabHRVSDNNGridLayout_2.ColumnWidth = {50, '1x'};
            app.VerifyTabHRVSDNNGridLayout_2.RowHeight = {'1x'};
            app.VerifyTabHRVSDNNGridLayout_2.ColumnSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout_2.RowSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout_2.Padding = [0 0 0 0];
            app.VerifyTabHRVSDNNGridLayout_2.Layout.Row = 3;
            app.VerifyTabHRVSDNNGridLayout_2.Layout.Column = [1 2];

            % Create HFLabel
            app.HFLabel = uilabel(app.VerifyTabHRVSDNNGridLayout_2);
            app.HFLabel.HorizontalAlignment = 'right';
            app.HFLabel.Layout.Row = 1;
            app.HFLabel.Layout.Column = 1;
            app.HFLabel.Text = 'HF:';

            % Create HFEditField
            app.HFEditField = uieditfield(app.VerifyTabHRVSDNNGridLayout_2, 'numeric');
            app.HFEditField.Editable = 'off';
            app.HFEditField.HorizontalAlignment = 'left';
            app.HFEditField.Layout.Row = 1;
            app.HFEditField.Layout.Column = 2;

            % Create VerifyTabHRVSDNNGridLayout_3
            app.VerifyTabHRVSDNNGridLayout_3 = uigridlayout(app.VerifyTabSettingsGridLayout);
            app.VerifyTabHRVSDNNGridLayout_3.ColumnWidth = {50, '1x'};
            app.VerifyTabHRVSDNNGridLayout_3.RowHeight = {'1x'};
            app.VerifyTabHRVSDNNGridLayout_3.ColumnSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout_3.RowSpacing = 0;
            app.VerifyTabHRVSDNNGridLayout_3.Padding = [0 0 0 0];
            app.VerifyTabHRVSDNNGridLayout_3.Layout.Row = 4;
            app.VerifyTabHRVSDNNGridLayout_3.Layout.Column = [1 2];

            % Create HFLFRatioLabel
            app.HFLFRatioLabel = uilabel(app.VerifyTabHRVSDNNGridLayout_3);
            app.HFLFRatioLabel.HorizontalAlignment = 'right';
            app.HFLFRatioLabel.Layout.Row = 1;
            app.HFLFRatioLabel.Layout.Column = 1;
            app.HFLFRatioLabel.Text = 'HF/LF:';

            % Create HFLFRatioEditField
            app.HFLFRatioEditField = uieditfield(app.VerifyTabHRVSDNNGridLayout_3, 'numeric');
            app.HFLFRatioEditField.Editable = 'off';
            app.HFLFRatioEditField.HorizontalAlignment = 'left';
            app.HFLFRatioEditField.Layout.Row = 1;
            app.HFLFRatioEditField.Layout.Column = 2;

            % Create VerifyTabPlotSignalGridLayout
            app.VerifyTabPlotSignalGridLayout = uigridlayout(app.VerifyTabMainGridLayout);
            app.VerifyTabPlotSignalGridLayout.ColumnWidth = {'1.8x', '1x'};
            app.VerifyTabPlotSignalGridLayout.RowHeight = {20, 20};
            app.VerifyTabPlotSignalGridLayout.ColumnSpacing = 3;
            app.VerifyTabPlotSignalGridLayout.RowSpacing = 0;
            app.VerifyTabPlotSignalGridLayout.Padding = [0 0 0 0];
            app.VerifyTabPlotSignalGridLayout.Layout.Row = 2;
            app.VerifyTabPlotSignalGridLayout.Layout.Column = 2;

            % Create VerifyTabPlotSignalLabel
            app.VerifyTabPlotSignalLabel = uilabel(app.VerifyTabPlotSignalGridLayout);
            app.VerifyTabPlotSignalLabel.HorizontalAlignment = 'center';
            app.VerifyTabPlotSignalLabel.FontWeight = 'bold';
            app.VerifyTabPlotSignalLabel.Layout.Row = 1;
            app.VerifyTabPlotSignalLabel.Layout.Column = [1 2];
            app.VerifyTabPlotSignalLabel.Text = 'Plot Signal';

            % Create VerifyTabPlotAutoCheckBox
            app.VerifyTabPlotAutoCheckBox = uicheckbox(app.VerifyTabPlotSignalGridLayout);
            app.VerifyTabPlotAutoCheckBox.Text = 'Auto';
            app.VerifyTabPlotAutoCheckBox.Layout.Row = 2;
            app.VerifyTabPlotAutoCheckBox.Layout.Column = 2;
            app.VerifyTabPlotAutoCheckBox.Value = true;

            % Create VerifyTabPlotSignalButton
            app.VerifyTabPlotSignalButton = uibutton(app.VerifyTabPlotSignalGridLayout, 'push');
            app.VerifyTabPlotSignalButton.ButtonPushedFcn = createCallbackFcn(app, @VerifyTabPlotSignalButtonPushed, true);
            app.VerifyTabPlotSignalButton.HorizontalAlignment = 'left';
            app.VerifyTabPlotSignalButton.Layout.Row = 2;
            app.VerifyTabPlotSignalButton.Layout.Column = 1;
            app.VerifyTabPlotSignalButton.Text = 'Plot Signal';

            % Create OutputTab
            app.OutputTab = uitab(app.TabGroup);
            app.OutputTab.Title = 'Output';
            app.OutputTab.ButtonDownFcn = createCallbackFcn(app, @OutputTabButtonDown, true);

            % Create OutputTabMainGridLayout
            app.OutputTabMainGridLayout = uigridlayout(app.OutputTab);
            app.OutputTabMainGridLayout.ColumnWidth = {'1x', 140};
            app.OutputTabMainGridLayout.RowHeight = {'1x', 80};
            app.OutputTabMainGridLayout.ColumnSpacing = 0;
            app.OutputTabMainGridLayout.RowSpacing = 0;
            app.OutputTabMainGridLayout.Padding = [5 5 5 5];

            % Create OutputTabInformationGridLayout
            app.OutputTabInformationGridLayout = uigridlayout(app.OutputTabMainGridLayout);
            app.OutputTabInformationGridLayout.ColumnWidth = {'1x'};
            app.OutputTabInformationGridLayout.RowHeight = {20, 20, 20, 20, 40, 20, '1x'};
            app.OutputTabInformationGridLayout.ColumnSpacing = 0;
            app.OutputTabInformationGridLayout.RowSpacing = 0;
            app.OutputTabInformationGridLayout.Padding = [0 0 0 0];
            app.OutputTabInformationGridLayout.Layout.Row = 1;
            app.OutputTabInformationGridLayout.Layout.Column = 2;

            % Create OutputTabInfoNameGridLayout
            app.OutputTabInfoNameGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabInfoNameGridLayout.ColumnWidth = {40, '1x'};
            app.OutputTabInfoNameGridLayout.RowHeight = {'1x'};
            app.OutputTabInfoNameGridLayout.ColumnSpacing = 0;
            app.OutputTabInfoNameGridLayout.RowSpacing = 0;
            app.OutputTabInfoNameGridLayout.Padding = [0 0 0 0];
            app.OutputTabInfoNameGridLayout.Layout.Row = 2;
            app.OutputTabInfoNameGridLayout.Layout.Column = 1;

            % Create OutputTabInfoNameLabel
            app.OutputTabInfoNameLabel = uilabel(app.OutputTabInfoNameGridLayout);
            app.OutputTabInfoNameLabel.HorizontalAlignment = 'right';
            app.OutputTabInfoNameLabel.Layout.Row = 1;
            app.OutputTabInfoNameLabel.Layout.Column = 1;
            app.OutputTabInfoNameLabel.Text = 'Name ';

            % Create OutputTabInfoNameEditField
            app.OutputTabInfoNameEditField = uieditfield(app.OutputTabInfoNameGridLayout, 'text');
            app.OutputTabInfoNameEditField.ValueChangedFcn = createCallbackFcn(app, @OutputTabInfoNameEditFieldValueChanged, true);
            app.OutputTabInfoNameEditField.Layout.Row = 1;
            app.OutputTabInfoNameEditField.Layout.Column = 2;
            app.OutputTabInfoNameEditField.Value = 'None';

            % Create OutputTabInfoIDGridLayout
            app.OutputTabInfoIDGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabInfoIDGridLayout.ColumnWidth = {40, '1x'};
            app.OutputTabInfoIDGridLayout.RowHeight = {'1x'};
            app.OutputTabInfoIDGridLayout.ColumnSpacing = 0;
            app.OutputTabInfoIDGridLayout.RowSpacing = 0;
            app.OutputTabInfoIDGridLayout.Padding = [0 0 0 0];
            app.OutputTabInfoIDGridLayout.Layout.Row = 3;
            app.OutputTabInfoIDGridLayout.Layout.Column = 1;

            % Create OutputTabInfoIDLabel
            app.OutputTabInfoIDLabel = uilabel(app.OutputTabInfoIDGridLayout);
            app.OutputTabInfoIDLabel.HorizontalAlignment = 'right';
            app.OutputTabInfoIDLabel.Layout.Row = 1;
            app.OutputTabInfoIDLabel.Layout.Column = 1;
            app.OutputTabInfoIDLabel.Text = 'ID ';

            % Create OutputTabInfoIDEditField
            app.OutputTabInfoIDEditField = uieditfield(app.OutputTabInfoIDGridLayout, 'text');
            app.OutputTabInfoIDEditField.ValueChangedFcn = createCallbackFcn(app, @OutputTabInfoIDEditFieldValueChanged, true);
            app.OutputTabInfoIDEditField.Layout.Row = 1;
            app.OutputTabInfoIDEditField.Layout.Column = 2;
            app.OutputTabInfoIDEditField.Value = 'NA';

            % Create OutputTabInfoDateGridLayout
            app.OutputTabInfoDateGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabInfoDateGridLayout.ColumnWidth = {40, '1x'};
            app.OutputTabInfoDateGridLayout.RowHeight = {'1x'};
            app.OutputTabInfoDateGridLayout.ColumnSpacing = 0;
            app.OutputTabInfoDateGridLayout.RowSpacing = 0;
            app.OutputTabInfoDateGridLayout.Padding = [0 0 0 0];
            app.OutputTabInfoDateGridLayout.Layout.Row = 4;
            app.OutputTabInfoDateGridLayout.Layout.Column = 1;

            % Create OutputTabInfoDateLabel
            app.OutputTabInfoDateLabel = uilabel(app.OutputTabInfoDateGridLayout);
            app.OutputTabInfoDateLabel.HorizontalAlignment = 'right';
            app.OutputTabInfoDateLabel.Layout.Row = 1;
            app.OutputTabInfoDateLabel.Layout.Column = 1;
            app.OutputTabInfoDateLabel.Text = 'Date ';

            % Create OutputTabInfoDatePicker
            app.OutputTabInfoDatePicker = uidatepicker(app.OutputTabInfoDateGridLayout);
            app.OutputTabInfoDatePicker.ValueChangedFcn = createCallbackFcn(app, @OutputTabInfoDatePickerValueChanged, true);
            app.OutputTabInfoDatePicker.Layout.Row = 1;
            app.OutputTabInfoDatePicker.Layout.Column = 2;

            % Create OutputTabTimeGridLayout
            app.OutputTabTimeGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabTimeGridLayout.ColumnWidth = {40, '1x', 5, '1x'};
            app.OutputTabTimeGridLayout.ColumnSpacing = 0;
            app.OutputTabTimeGridLayout.RowSpacing = 0;
            app.OutputTabTimeGridLayout.Padding = [0 0 0 0];
            app.OutputTabTimeGridLayout.Layout.Row = 5;
            app.OutputTabTimeGridLayout.Layout.Column = 1;

            % Create OutputTabTimeLabel
            app.OutputTabTimeLabel = uilabel(app.OutputTabTimeGridLayout);
            app.OutputTabTimeLabel.HorizontalAlignment = 'right';
            app.OutputTabTimeLabel.Layout.Row = 1;
            app.OutputTabTimeLabel.Layout.Column = 1;
            app.OutputTabTimeLabel.Text = 'Time ';

            % Create OutputTabTimeHourSpinner
            app.OutputTabTimeHourSpinner = uispinner(app.OutputTabTimeGridLayout);
            app.OutputTabTimeHourSpinner.Limits = [0 23];
            app.OutputTabTimeHourSpinner.ValueDisplayFormat = '%02d';
            app.OutputTabTimeHourSpinner.ValueChangedFcn = createCallbackFcn(app, @OutputTabTimeHourSpinnerValueChanged, true);
            app.OutputTabTimeHourSpinner.HorizontalAlignment = 'center';
            app.OutputTabTimeHourSpinner.Layout.Row = 1;
            app.OutputTabTimeHourSpinner.Layout.Column = 2;

            % Create OutputTabTimeMinuteSpinner
            app.OutputTabTimeMinuteSpinner = uispinner(app.OutputTabTimeGridLayout);
            app.OutputTabTimeMinuteSpinner.Limits = [0 59];
            app.OutputTabTimeMinuteSpinner.ValueDisplayFormat = '%02d';
            app.OutputTabTimeMinuteSpinner.ValueChangedFcn = createCallbackFcn(app, @OutputTabTimeMinuteSpinnerValueChanged, true);
            app.OutputTabTimeMinuteSpinner.HorizontalAlignment = 'left';
            app.OutputTabTimeMinuteSpinner.Layout.Row = 1;
            app.OutputTabTimeMinuteSpinner.Layout.Column = 4;

            % Create OutputTabTimeLabel1
            app.OutputTabTimeLabel1 = uilabel(app.OutputTabTimeGridLayout);
            app.OutputTabTimeLabel1.Layout.Row = 1;
            app.OutputTabTimeLabel1.Layout.Column = 3;
            app.OutputTabTimeLabel1.Text = ':';

            % Create OutputTabTimeSecondSpinner
            app.OutputTabTimeSecondSpinner = uispinner(app.OutputTabTimeGridLayout);
            app.OutputTabTimeSecondSpinner.Limits = [0 59];
            app.OutputTabTimeSecondSpinner.ValueDisplayFormat = '%02d';
            app.OutputTabTimeSecondSpinner.ValueChangedFcn = createCallbackFcn(app, @OutputTabTimeSecondSpinnerValueChanged, true);
            app.OutputTabTimeSecondSpinner.HorizontalAlignment = 'center';
            app.OutputTabTimeSecondSpinner.Layout.Row = 2;
            app.OutputTabTimeSecondSpinner.Layout.Column = 2;

            % Create OutputTabTimeLabel2
            app.OutputTabTimeLabel2 = uilabel(app.OutputTabTimeGridLayout);
            app.OutputTabTimeLabel2.Layout.Row = 2;
            app.OutputTabTimeLabel2.Layout.Column = 3;
            app.OutputTabTimeLabel2.Text = ':';

            % Create OutputTabTimeMillisecondSpinner
            app.OutputTabTimeMillisecondSpinner = uieditfield(app.OutputTabTimeGridLayout, 'numeric');
            app.OutputTabTimeMillisecondSpinner.Limits = [0 999];
            app.OutputTabTimeMillisecondSpinner.ValueDisplayFormat = '%04d';
            app.OutputTabTimeMillisecondSpinner.ValueChangedFcn = createCallbackFcn(app, @OutputTabTimeMillisecondSpinnerValueChanged, true);
            app.OutputTabTimeMillisecondSpinner.HorizontalAlignment = 'left';
            app.OutputTabTimeMillisecondSpinner.Layout.Row = 2;
            app.OutputTabTimeMillisecondSpinner.Layout.Column = 4;

            % Create OutputTabFrequencyGridLayout
            app.OutputTabFrequencyGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabFrequencyGridLayout.ColumnWidth = {70, '1x'};
            app.OutputTabFrequencyGridLayout.RowHeight = {'1x'};
            app.OutputTabFrequencyGridLayout.ColumnSpacing = 0;
            app.OutputTabFrequencyGridLayout.RowSpacing = 0;
            app.OutputTabFrequencyGridLayout.Padding = [0 0 0 0];
            app.OutputTabFrequencyGridLayout.Layout.Row = 6;
            app.OutputTabFrequencyGridLayout.Layout.Column = 1;

            % Create OutputTabFrequencyLabel
            app.OutputTabFrequencyLabel = uilabel(app.OutputTabFrequencyGridLayout);
            app.OutputTabFrequencyLabel.HorizontalAlignment = 'right';
            app.OutputTabFrequencyLabel.FontWeight = 'bold';
            app.OutputTabFrequencyLabel.FontColor = [1 0 0];
            app.OutputTabFrequencyLabel.Layout.Row = 1;
            app.OutputTabFrequencyLabel.Layout.Column = 1;
            app.OutputTabFrequencyLabel.Text = 'Frequency ';

            % Create OutputTabTFrequencySpinner
            app.OutputTabTFrequencySpinner = uieditfield(app.OutputTabFrequencyGridLayout, 'numeric');
            app.OutputTabTFrequencySpinner.Limits = [0 1000];
            app.OutputTabTFrequencySpinner.ValueDisplayFormat = '%d';
            app.OutputTabTFrequencySpinner.ValueChangedFcn = createCallbackFcn(app, @OutputTabTFrequencySpinnerValueChanged, true);
            app.OutputTabTFrequencySpinner.HorizontalAlignment = 'left';
            app.OutputTabTFrequencySpinner.Layout.Row = 1;
            app.OutputTabTFrequencySpinner.Layout.Column = 2;
            app.OutputTabTFrequencySpinner.Value = 256;

            % Create OutputTabNoteGridLayout
            app.OutputTabNoteGridLayout = uigridlayout(app.OutputTabInformationGridLayout);
            app.OutputTabNoteGridLayout.ColumnWidth = {40, '1x'};
            app.OutputTabNoteGridLayout.RowHeight = {'1x'};
            app.OutputTabNoteGridLayout.ColumnSpacing = 0;
            app.OutputTabNoteGridLayout.RowSpacing = 0;
            app.OutputTabNoteGridLayout.Padding = [0 0 0 0];
            app.OutputTabNoteGridLayout.Layout.Row = 7;
            app.OutputTabNoteGridLayout.Layout.Column = 1;

            % Create OutputTabNoteLabel
            app.OutputTabNoteLabel = uilabel(app.OutputTabNoteGridLayout);
            app.OutputTabNoteLabel.HorizontalAlignment = 'right';
            app.OutputTabNoteLabel.Layout.Row = 1;
            app.OutputTabNoteLabel.Layout.Column = 1;
            app.OutputTabNoteLabel.Text = 'Note ';

            % Create OutputTabNoteTextArea
            app.OutputTabNoteTextArea = uitextarea(app.OutputTabNoteGridLayout);
            app.OutputTabNoteTextArea.ValueChangedFcn = createCallbackFcn(app, @OutputTabNoteTextAreaValueChanged, true);
            app.OutputTabNoteTextArea.Layout.Row = 1;
            app.OutputTabNoteTextArea.Layout.Column = 2;

            % Create OutputTabInformationLabel
            app.OutputTabInformationLabel = uilabel(app.OutputTabInformationGridLayout);
            app.OutputTabInformationLabel.HorizontalAlignment = 'center';
            app.OutputTabInformationLabel.FontWeight = 'bold';
            app.OutputTabInformationLabel.Layout.Row = 1;
            app.OutputTabInformationLabel.Layout.Column = 1;
            app.OutputTabInformationLabel.Text = 'Information';

            % Create OutputTabHRVGridLayout
            app.OutputTabHRVGridLayout = uigridlayout(app.OutputTabMainGridLayout);
            app.OutputTabHRVGridLayout.ColumnWidth = {'1x'};
            app.OutputTabHRVGridLayout.RowHeight = {20, 100, '1x', 20};
            app.OutputTabHRVGridLayout.ColumnSpacing = 0;
            app.OutputTabHRVGridLayout.RowSpacing = 0;
            app.OutputTabHRVGridLayout.Padding = [0 0 0 0];
            app.OutputTabHRVGridLayout.Layout.Row = 1;
            app.OutputTabHRVGridLayout.Layout.Column = 1;

            % Create OutputTabHRVTitleLabel
            app.OutputTabHRVTitleLabel = uilabel(app.OutputTabHRVGridLayout);
            app.OutputTabHRVTitleLabel.HorizontalAlignment = 'center';
            app.OutputTabHRVTitleLabel.FontWeight = 'bold';
            app.OutputTabHRVTitleLabel.Layout.Row = 1;
            app.OutputTabHRVTitleLabel.Layout.Column = 1;
            app.OutputTabHRVTitleLabel.Text = 'HRV';

            % Create OutputTabStatisticGridLayout
            app.OutputTabStatisticGridLayout = uigridlayout(app.OutputTabHRVGridLayout);
            app.OutputTabStatisticGridLayout.ColumnWidth = {65, '0.8x', 70, '1x', 40, '1x'};
            app.OutputTabStatisticGridLayout.RowHeight = {20, 20, 20, 20, 20};
            app.OutputTabStatisticGridLayout.ColumnSpacing = 0;
            app.OutputTabStatisticGridLayout.RowSpacing = 0;
            app.OutputTabStatisticGridLayout.Padding = [0 0 0 0];
            app.OutputTabStatisticGridLayout.Layout.Row = 2;
            app.OutputTabStatisticGridLayout.Layout.Column = 1;
            app.OutputTabStatisticGridLayout.BackgroundColor = [0.902 0.902 0.902];

            % Create OutputTabRRIntervalLabel
            app.OutputTabRRIntervalLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabRRIntervalLabel.BackgroundColor = [0.8 0.8 0.8];
            app.OutputTabRRIntervalLabel.HorizontalAlignment = 'center';
            app.OutputTabRRIntervalLabel.FontWeight = 'bold';
            app.OutputTabRRIntervalLabel.Layout.Row = 1;
            app.OutputTabRRIntervalLabel.Layout.Column = [1 2];
            app.OutputTabRRIntervalLabel.Text = 'R-R Interval (ms)';

            % Create OutputTabTimeDomainLabel
            app.OutputTabTimeDomainLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabTimeDomainLabel.BackgroundColor = [0.8 0.8 0.8];
            app.OutputTabTimeDomainLabel.HorizontalAlignment = 'center';
            app.OutputTabTimeDomainLabel.FontWeight = 'bold';
            app.OutputTabTimeDomainLabel.Layout.Row = 1;
            app.OutputTabTimeDomainLabel.Layout.Column = [3 4];
            app.OutputTabTimeDomainLabel.Text = 'Time Domain (ms)';

            % Create OutputTabFrequencyDomainLabel
            app.OutputTabFrequencyDomainLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabFrequencyDomainLabel.BackgroundColor = [0.8 0.8 0.8];
            app.OutputTabFrequencyDomainLabel.HorizontalAlignment = 'center';
            app.OutputTabFrequencyDomainLabel.FontWeight = 'bold';
            app.OutputTabFrequencyDomainLabel.Layout.Row = 1;
            app.OutputTabFrequencyDomainLabel.Layout.Column = [5 6];
            app.OutputTabFrequencyDomainLabel.Text = 'Frequency Domain';

            % Create OutputTabTotalBeatsLabel
            app.OutputTabTotalBeatsLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabTotalBeatsLabel.HorizontalAlignment = 'right';
            app.OutputTabTotalBeatsLabel.Layout.Row = 2;
            app.OutputTabTotalBeatsLabel.Layout.Column = 1;
            app.OutputTabTotalBeatsLabel.Text = 'Total Beats:';

            % Create OutputTabMeanRRLabel
            app.OutputTabMeanRRLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabMeanRRLabel.HorizontalAlignment = 'right';
            app.OutputTabMeanRRLabel.Layout.Row = 3;
            app.OutputTabMeanRRLabel.Layout.Column = 1;
            app.OutputTabMeanRRLabel.Text = 'Mean R-R:';

            % Create OutputTabMaxRRLabel
            app.OutputTabMaxRRLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabMaxRRLabel.HorizontalAlignment = 'right';
            app.OutputTabMaxRRLabel.Layout.Row = 4;
            app.OutputTabMaxRRLabel.Layout.Column = 1;
            app.OutputTabMaxRRLabel.Text = 'Max R-R:';

            % Create OutputTabMinRRLabel
            app.OutputTabMinRRLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabMinRRLabel.HorizontalAlignment = 'right';
            app.OutputTabMinRRLabel.Layout.Row = 5;
            app.OutputTabMinRRLabel.Layout.Column = 1;
            app.OutputTabMinRRLabel.Text = 'Min R-R:';

            % Create OutputTabSDNNLabel
            app.OutputTabSDNNLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabSDNNLabel.HorizontalAlignment = 'right';
            app.OutputTabSDNNLabel.Layout.Row = 2;
            app.OutputTabSDNNLabel.Layout.Column = 3;
            app.OutputTabSDNNLabel.Text = 'SDNN:';

            % Create OutputTabTriangleIdxLabel
            app.OutputTabTriangleIdxLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabTriangleIdxLabel.HorizontalAlignment = 'right';
            app.OutputTabTriangleIdxLabel.Layout.Row = 4;
            app.OutputTabTriangleIdxLabel.Layout.Column = 3;
            app.OutputTabTriangleIdxLabel.Text = 'Triangle Idx:';

            % Create OutputTabSDSDLabel
            app.OutputTabSDSDLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabSDSDLabel.HorizontalAlignment = 'right';
            app.OutputTabSDSDLabel.Layout.Row = 3;
            app.OutputTabSDSDLabel.Layout.Column = 3;
            app.OutputTabSDSDLabel.Text = 'SDSD:';

            % Create OutputTabPNN50Label
            app.OutputTabPNN50Label = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabPNN50Label.HorizontalAlignment = 'right';
            app.OutputTabPNN50Label.Layout.Row = 5;
            app.OutputTabPNN50Label.Layout.Column = 3;
            app.OutputTabPNN50Label.Text = 'pNN50:';

            % Create OutputTabTPLabel
            app.OutputTabTPLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabTPLabel.HorizontalAlignment = 'right';
            app.OutputTabTPLabel.Layout.Row = 2;
            app.OutputTabTPLabel.Layout.Column = 5;
            app.OutputTabTPLabel.Text = 'TP:';

            % Create OutputTabVLFLabel
            app.OutputTabVLFLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabVLFLabel.HorizontalAlignment = 'right';
            app.OutputTabVLFLabel.Layout.Row = 3;
            app.OutputTabVLFLabel.Layout.Column = 5;
            app.OutputTabVLFLabel.Text = 'VLF:';

            % Create OutputTabLFLabel
            app.OutputTabLFLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabLFLabel.HorizontalAlignment = 'right';
            app.OutputTabLFLabel.Layout.Row = 4;
            app.OutputTabLFLabel.Layout.Column = 5;
            app.OutputTabLFLabel.Text = 'LF:';

            % Create OutputTabLFHFLabel
            app.OutputTabLFHFLabel = uilabel(app.OutputTabStatisticGridLayout);
            app.OutputTabLFHFLabel.HorizontalAlignment = 'right';
            app.OutputTabLFHFLabel.Layout.Row = 5;
            app.OutputTabLFHFLabel.Layout.Column = 5;
            app.OutputTabLFHFLabel.Text = 'LF/HF:';

            % Create OutputTabTotalBeatsEditField
            app.OutputTabTotalBeatsEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabTotalBeatsEditField.ValueDisplayFormat = '%.0f';
            app.OutputTabTotalBeatsEditField.Editable = 'off';
            app.OutputTabTotalBeatsEditField.HorizontalAlignment = 'left';
            app.OutputTabTotalBeatsEditField.Layout.Row = 2;
            app.OutputTabTotalBeatsEditField.Layout.Column = 2;

            % Create OutputTabSDNNEditField
            app.OutputTabSDNNEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabSDNNEditField.ValueDisplayFormat = '%3.2e';
            app.OutputTabSDNNEditField.Editable = 'off';
            app.OutputTabSDNNEditField.HorizontalAlignment = 'left';
            app.OutputTabSDNNEditField.Layout.Row = 2;
            app.OutputTabSDNNEditField.Layout.Column = 4;

            % Create OutputTabTPEditField
            app.OutputTabTPEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabTPEditField.ValueDisplayFormat = '%3.2e';
            app.OutputTabTPEditField.Editable = 'off';
            app.OutputTabTPEditField.HorizontalAlignment = 'left';
            app.OutputTabTPEditField.Layout.Row = 2;
            app.OutputTabTPEditField.Layout.Column = 6;

            % Create OutputTabMeanRREditField
            app.OutputTabMeanRREditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabMeanRREditField.ValueDisplayFormat = '%.2f';
            app.OutputTabMeanRREditField.Editable = 'off';
            app.OutputTabMeanRREditField.HorizontalAlignment = 'left';
            app.OutputTabMeanRREditField.Layout.Row = 3;
            app.OutputTabMeanRREditField.Layout.Column = 2;

            % Create OutputTabSDSDEditField
            app.OutputTabSDSDEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabSDSDEditField.ValueDisplayFormat = '%3.2e';
            app.OutputTabSDSDEditField.Editable = 'off';
            app.OutputTabSDSDEditField.HorizontalAlignment = 'left';
            app.OutputTabSDSDEditField.Layout.Row = 3;
            app.OutputTabSDSDEditField.Layout.Column = 4;

            % Create OutputTabVLFEditField
            app.OutputTabVLFEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabVLFEditField.ValueDisplayFormat = '%3.2e';
            app.OutputTabVLFEditField.Editable = 'off';
            app.OutputTabVLFEditField.HorizontalAlignment = 'left';
            app.OutputTabVLFEditField.Layout.Row = 3;
            app.OutputTabVLFEditField.Layout.Column = 6;

            % Create OutputTabMaxRREditField
            app.OutputTabMaxRREditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabMaxRREditField.ValueDisplayFormat = '%.2f';
            app.OutputTabMaxRREditField.Editable = 'off';
            app.OutputTabMaxRREditField.HorizontalAlignment = 'left';
            app.OutputTabMaxRREditField.Layout.Row = 4;
            app.OutputTabMaxRREditField.Layout.Column = 2;

            % Create OutputTabTriangleIdxEditField
            app.OutputTabTriangleIdxEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabTriangleIdxEditField.ValueDisplayFormat = '%.2f';
            app.OutputTabTriangleIdxEditField.Editable = 'off';
            app.OutputTabTriangleIdxEditField.HorizontalAlignment = 'left';
            app.OutputTabTriangleIdxEditField.Layout.Row = 4;
            app.OutputTabTriangleIdxEditField.Layout.Column = 4;

            % Create OutputTabLFEditField
            app.OutputTabLFEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabLFEditField.ValueDisplayFormat = '%3.2e';
            app.OutputTabLFEditField.Editable = 'off';
            app.OutputTabLFEditField.HorizontalAlignment = 'left';
            app.OutputTabLFEditField.Layout.Row = 4;
            app.OutputTabLFEditField.Layout.Column = 6;

            % Create OutputTabMinRREditField
            app.OutputTabMinRREditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabMinRREditField.ValueDisplayFormat = '%.2f';
            app.OutputTabMinRREditField.Editable = 'off';
            app.OutputTabMinRREditField.HorizontalAlignment = 'left';
            app.OutputTabMinRREditField.Layout.Row = 5;
            app.OutputTabMinRREditField.Layout.Column = 2;

            % Create OutputTabPNN50EditField
            app.OutputTabPNN50EditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabPNN50EditField.ValueDisplayFormat = '%.2f';
            app.OutputTabPNN50EditField.Editable = 'off';
            app.OutputTabPNN50EditField.HorizontalAlignment = 'left';
            app.OutputTabPNN50EditField.Layout.Row = 5;
            app.OutputTabPNN50EditField.Layout.Column = 4;

            % Create OutputTabLFHFEditField
            app.OutputTabLFHFEditField = uieditfield(app.OutputTabStatisticGridLayout, 'numeric');
            app.OutputTabLFHFEditField.ValueDisplayFormat = '%.2f';
            app.OutputTabLFHFEditField.Editable = 'off';
            app.OutputTabLFHFEditField.HorizontalAlignment = 'left';
            app.OutputTabLFHFEditField.Layout.Row = 5;
            app.OutputTabLFHFEditField.Layout.Column = 6;

            % Create OutputTabHRVTimeLabel
            app.OutputTabHRVTimeLabel = uilabel(app.OutputTabHRVGridLayout);
            app.OutputTabHRVTimeLabel.HorizontalAlignment = 'center';
            app.OutputTabHRVTimeLabel.Layout.Row = 4;
            app.OutputTabHRVTimeLabel.Layout.Column = 1;
            app.OutputTabHRVTimeLabel.Text = 'Time (s)';

            % Create OutputTabHRVAxesGridLayout
            app.OutputTabHRVAxesGridLayout = uigridlayout(app.OutputTabHRVGridLayout);
            app.OutputTabHRVAxesGridLayout.ColumnWidth = {30, '1x'};
            app.OutputTabHRVAxesGridLayout.ColumnSpacing = 0;
            app.OutputTabHRVAxesGridLayout.RowSpacing = 0;
            app.OutputTabHRVAxesGridLayout.Padding = [0 0 0 0];
            app.OutputTabHRVAxesGridLayout.Layout.Row = 3;
            app.OutputTabHRVAxesGridLayout.Layout.Column = 1;

            % Create OutputTabSignalRRAxes
            app.OutputTabSignalRRAxes = uiaxes(app.OutputTabHRVAxesGridLayout);
            ylabel(app.OutputTabSignalRRAxes, 'Time (ms)')
            app.OutputTabSignalRRAxes.Layout.Row = 1;
            app.OutputTabSignalRRAxes.Layout.Column = 2;

            % Create OutputTabSignalHRVAxes
            app.OutputTabSignalHRVAxes = uiaxes(app.OutputTabHRVAxesGridLayout);
            ylabel(app.OutputTabSignalHRVAxes, 'Time (ms)')
            app.OutputTabSignalHRVAxes.Layout.Row = 2;
            app.OutputTabSignalHRVAxes.Layout.Column = 2;

            % Create OutputTabHRVHRLabel
            app.OutputTabHRVHRLabel = uilabel(app.OutputTabHRVAxesGridLayout);
            app.OutputTabHRVHRLabel.HorizontalAlignment = 'right';
            app.OutputTabHRVHRLabel.Layout.Row = 1;
            app.OutputTabHRVHRLabel.Layout.Column = 1;
            app.OutputTabHRVHRLabel.Text = 'RR ';

            % Create OutputTabHRVHRVLabel
            app.OutputTabHRVHRVLabel = uilabel(app.OutputTabHRVAxesGridLayout);
            app.OutputTabHRVHRVLabel.HorizontalAlignment = 'right';
            app.OutputTabHRVHRVLabel.Layout.Row = 2;
            app.OutputTabHRVHRVLabel.Layout.Column = 1;
            app.OutputTabHRVHRVLabel.Text = 'HRV ';

            % Create OutputTabPlotSettingGridLayout
            app.OutputTabPlotSettingGridLayout = uigridlayout(app.OutputTabMainGridLayout);
            app.OutputTabPlotSettingGridLayout.ColumnWidth = {'1x'};
            app.OutputTabPlotSettingGridLayout.RowHeight = {20, 20, 20, 20};
            app.OutputTabPlotSettingGridLayout.ColumnSpacing = 0;
            app.OutputTabPlotSettingGridLayout.RowSpacing = 0;
            app.OutputTabPlotSettingGridLayout.Padding = [0 0 0 0];
            app.OutputTabPlotSettingGridLayout.Layout.Row = 2;
            app.OutputTabPlotSettingGridLayout.Layout.Column = 1;

            % Create OutputTabSignalGridLayout
            app.OutputTabSignalGridLayout = uigridlayout(app.OutputTabPlotSettingGridLayout);
            app.OutputTabSignalGridLayout.ColumnWidth = {'1x', 40, '1x'};
            app.OutputTabSignalGridLayout.RowHeight = {'1x'};
            app.OutputTabSignalGridLayout.ColumnSpacing = 0;
            app.OutputTabSignalGridLayout.RowSpacing = 0;
            app.OutputTabSignalGridLayout.Padding = [0 0 0 0];
            app.OutputTabSignalGridLayout.Layout.Row = 3;
            app.OutputTabSignalGridLayout.Layout.Column = 1;

            % Create OutputTabSignalEditField
            app.OutputTabSignalEditField = uieditfield(app.OutputTabSignalGridLayout, 'numeric');
            app.OutputTabSignalEditField.Limits = [0 Inf];
            app.OutputTabSignalEditField.Editable = 'off';
            app.OutputTabSignalEditField.HorizontalAlignment = 'center';
            app.OutputTabSignalEditField.Layout.Row = 1;
            app.OutputTabSignalEditField.Layout.Column = 2;

            % Create OutputTabSignalStartTimesLabel
            app.OutputTabSignalStartTimesLabel = uilabel(app.OutputTabSignalGridLayout);
            app.OutputTabSignalStartTimesLabel.HorizontalAlignment = 'right';
            app.OutputTabSignalStartTimesLabel.Layout.Row = 1;
            app.OutputTabSignalStartTimesLabel.Layout.Column = 1;
            app.OutputTabSignalStartTimesLabel.Text = 'Start Time (s) : ';

            % Create OutputTabPlotDensityGridLayout
            app.OutputTabPlotDensityGridLayout = uigridlayout(app.OutputTabPlotSettingGridLayout);
            app.OutputTabPlotDensityGridLayout.ColumnWidth = {'1x', 40, '1x'};
            app.OutputTabPlotDensityGridLayout.RowHeight = {'1x'};
            app.OutputTabPlotDensityGridLayout.ColumnSpacing = 0;
            app.OutputTabPlotDensityGridLayout.RowSpacing = 0;
            app.OutputTabPlotDensityGridLayout.Padding = [0 0 0 0];
            app.OutputTabPlotDensityGridLayout.Layout.Row = 4;
            app.OutputTabPlotDensityGridLayout.Layout.Column = 1;

            % Create OutputTabDensityEditField
            app.OutputTabDensityEditField = uieditfield(app.OutputTabPlotDensityGridLayout, 'numeric');
            app.OutputTabDensityEditField.Limits = [5 Inf];
            app.OutputTabDensityEditField.Editable = 'off';
            app.OutputTabDensityEditField.HorizontalAlignment = 'center';
            app.OutputTabDensityEditField.Layout.Row = 1;
            app.OutputTabDensityEditField.Layout.Column = 2;
            app.OutputTabDensityEditField.Value = 300;

            % Create OutputTabDensitysLabel
            app.OutputTabDensitysLabel = uilabel(app.OutputTabPlotDensityGridLayout);
            app.OutputTabDensitysLabel.HorizontalAlignment = 'right';
            app.OutputTabDensitysLabel.Layout.Row = 1;
            app.OutputTabDensitysLabel.Layout.Column = 1;
            app.OutputTabDensitysLabel.Text = 'Density (s) : ';

            % Create OutputTabPlotSettingLabel
            app.OutputTabPlotSettingLabel = uilabel(app.OutputTabPlotSettingGridLayout);
            app.OutputTabPlotSettingLabel.HorizontalAlignment = 'center';
            app.OutputTabPlotSettingLabel.FontWeight = 'bold';
            app.OutputTabPlotSettingLabel.Layout.Row = 1;
            app.OutputTabPlotSettingLabel.Layout.Column = 1;
            app.OutputTabPlotSettingLabel.Text = 'Plot Setting';

            % Create OutputTabPlotPageGridLayout
            app.OutputTabPlotPageGridLayout = uigridlayout(app.OutputTabPlotSettingGridLayout);
            app.OutputTabPlotPageGridLayout.ColumnWidth = {'1x', 45, 40, 40, 40, 45, '1x'};
            app.OutputTabPlotPageGridLayout.RowHeight = {'1x'};
            app.OutputTabPlotPageGridLayout.ColumnSpacing = 0;
            app.OutputTabPlotPageGridLayout.RowSpacing = 0;
            app.OutputTabPlotPageGridLayout.Padding = [0 0 0 0];
            app.OutputTabPlotPageGridLayout.Layout.Row = 2;
            app.OutputTabPlotPageGridLayout.Layout.Column = 1;

            % Create OutputTabPageEditField
            app.OutputTabPageEditField = uieditfield(app.OutputTabPlotPageGridLayout, 'numeric');
            app.OutputTabPageEditField.Limits = [1 Inf];
            app.OutputTabPageEditField.ValueChangedFcn = createCallbackFcn(app, @OutputTabPageEditFieldValueChanged, true);
            app.OutputTabPageEditField.HorizontalAlignment = 'center';
            app.OutputTabPageEditField.Layout.Row = 1;
            app.OutputTabPageEditField.Layout.Column = 4;
            app.OutputTabPageEditField.Value = 1;

            % Create OutputTabPageFirst
            app.OutputTabPageFirst = uibutton(app.OutputTabPlotPageGridLayout, 'push');
            app.OutputTabPageFirst.ButtonPushedFcn = createCallbackFcn(app, @OutputTabPageFirstButtonPushed, true);
            app.OutputTabPageFirst.Layout.Row = 1;
            app.OutputTabPageFirst.Layout.Column = 2;
            app.OutputTabPageFirst.Text = 'First';

            % Create OutputTabPagePrev
            app.OutputTabPagePrev = uibutton(app.OutputTabPlotPageGridLayout, 'push');
            app.OutputTabPagePrev.ButtonPushedFcn = createCallbackFcn(app, @OutputTabPagePrevButtonPushed, true);
            app.OutputTabPagePrev.Layout.Row = 1;
            app.OutputTabPagePrev.Layout.Column = 3;
            app.OutputTabPagePrev.Text = 'Prev';

            % Create OutputTabPageNext
            app.OutputTabPageNext = uibutton(app.OutputTabPlotPageGridLayout, 'push');
            app.OutputTabPageNext.ButtonPushedFcn = createCallbackFcn(app, @OutputTabPageNextButtonPushed, true);
            app.OutputTabPageNext.Layout.Row = 1;
            app.OutputTabPageNext.Layout.Column = 5;
            app.OutputTabPageNext.Text = 'Next';

            % Create OutputTabPageLast
            app.OutputTabPageLast = uibutton(app.OutputTabPlotPageGridLayout, 'push');
            app.OutputTabPageLast.ButtonPushedFcn = createCallbackFcn(app, @OutputTabPageLastButtonPushed, true);
            app.OutputTabPageLast.Layout.Row = 1;
            app.OutputTabPageLast.Layout.Column = 6;
            app.OutputTabPageLast.Text = 'Last';

            % Create OutputTabPageLabel
            app.OutputTabPageLabel = uilabel(app.OutputTabPlotPageGridLayout);
            app.OutputTabPageLabel.HorizontalAlignment = 'right';
            app.OutputTabPageLabel.Layout.Row = 1;
            app.OutputTabPageLabel.Layout.Column = 1;
            app.OutputTabPageLabel.Text = 'Page : ';

            % Create OutputTabOutputGridLayout
            app.OutputTabOutputGridLayout = uigridlayout(app.OutputTabMainGridLayout);
            app.OutputTabOutputGridLayout.ColumnWidth = {'1x'};
            app.OutputTabOutputGridLayout.RowHeight = {20, 40};
            app.OutputTabOutputGridLayout.ColumnSpacing = 3;
            app.OutputTabOutputGridLayout.RowSpacing = 0;
            app.OutputTabOutputGridLayout.Padding = [0 0 0 0];
            app.OutputTabOutputGridLayout.Layout.Row = 2;
            app.OutputTabOutputGridLayout.Layout.Column = 2;

            % Create VerifyTabPlotSignalLabel_2
            app.VerifyTabPlotSignalLabel_2 = uilabel(app.OutputTabOutputGridLayout);
            app.VerifyTabPlotSignalLabel_2.HorizontalAlignment = 'center';
            app.VerifyTabPlotSignalLabel_2.FontWeight = 'bold';
            app.VerifyTabPlotSignalLabel_2.Layout.Row = 1;
            app.VerifyTabPlotSignalLabel_2.Layout.Column = 1;
            app.VerifyTabPlotSignalLabel_2.Text = 'Output';

            % Create OutputTabOutputAllButton
            app.OutputTabOutputAllButton = uibutton(app.OutputTabOutputGridLayout, 'push');
            app.OutputTabOutputAllButton.ButtonPushedFcn = createCallbackFcn(app, @OutputTabOutputAllButtonPushed, true);
            app.OutputTabOutputAllButton.FontSize = 14;
            app.OutputTabOutputAllButton.FontWeight = 'bold';
            app.OutputTabOutputAllButton.FontColor = [1 0 0];
            app.OutputTabOutputAllButton.Layout.Row = 2;
            app.OutputTabOutputAllButton.Layout.Column = 1;
            app.OutputTabOutputAllButton.Text = 'Output All';

            % Show the figure after all components are created
            app.HRVAnalyserMainGUI.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = HRV_Analyser_GUI_Main_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.HRVAnalyserMainGUI)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.HRVAnalyserMainGUI)
        end
    end
end
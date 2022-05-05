function U = importfile(filename, dataLines)
%IMPORTFILE 从文本文件中导入数据
%  U2 = IMPORTFILE(FILENAME)读取文本文件 FILENAME 中默认选定范围的数据。  返回数值数据。
%
%  U2 = IMPORTFILE(FILE, DATALINES)按指定行间隔读取文本文件 FILENAME
%  中的数据。对于不连续的行间隔，请将 DATALINES 指定为正整数标量或 N×2 正整数标量数组。
%
%  示例:
%  U2 = importfile("C:\Users\zhang\Desktop\U2", [1, Inf]);
%
%  另请参阅 READTABLE。
%
% 由 MATLAB 于 2022-05-04 12:22:30 自动生成

%% 输入处理

% 如果不指定 dataLines，请定义默认范围
if nargin < 2
    dataLines = [1, Inf];
end

%% 设置导入选项并导入数据
opts = delimitedTextImportOptions("NumVariables", 121);

% 指定范围和分隔符
opts.DataLines = dataLines;
opts.Delimiter = " ";

% 指定列名称和类型
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4", "VarName5", "VarName6", "VarName7", "VarName8", "VarName9", "VarName10", "VarName11", "VarName12", "VarName13", "VarName14", "VarName15", "VarName16", "VarName17", "VarName18", "VarName19", "VarName20", "VarName21", "VarName22", "VarName23", "VarName24", "VarName25", "VarName26", "VarName27", "VarName28", "VarName29", "VarName30", "VarName31", "VarName32", "VarName33", "VarName34", "VarName35", "VarName36", "VarName37", "VarName38", "VarName39", "VarName40", "VarName41", "VarName42", "VarName43", "VarName44", "VarName45", "VarName46", "VarName47", "VarName48", "VarName49", "VarName50", "VarName51", "VarName52", "VarName53", "VarName54", "VarName55", "VarName56", "VarName57", "VarName58", "VarName59", "VarName60", "VarName61", "VarName62", "VarName63", "VarName64", "VarName65", "VarName66", "VarName67", "VarName68", "VarName69", "VarName70", "VarName71", "VarName72", "VarName73", "VarName74", "VarName75", "VarName76", "VarName77", "VarName78", "VarName79", "VarName80", "VarName81", "VarName82", "VarName83", "VarName84", "VarName85", "VarName86", "VarName87", "VarName88", "VarName89", "VarName90", "VarName91", "VarName92", "VarName93", "VarName94", "VarName95", "VarName96", "VarName97", "VarName98", "VarName99", "VarName100", "VarName101", "VarName102", "VarName103", "VarName104", "VarName105", "VarName106", "VarName107", "VarName108", "VarName109", "VarName110", "VarName111", "VarName112", "VarName113", "VarName114", "VarName115", "VarName116", "VarName117", "VarName118", "VarName119", "VarName120", "VarName121"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% 指定文件级属性
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";
opts.LeadingDelimitersRule = "ignore";

% 指定变量属性
opts = setvaropts(opts, ["VarName2", "VarName4", "VarName5", "VarName7", "VarName8", "VarName10", "VarName11", "VarName13", "VarName14", "VarName16", "VarName17", "VarName19", "VarName20", "VarName22", "VarName23", "VarName25", "VarName26", "VarName28", "VarName29", "VarName31", "VarName32", "VarName34", "VarName35", "VarName37", "VarName38", "VarName40", "VarName41", "VarName43", "VarName44", "VarName46", "VarName47", "VarName49", "VarName50", "VarName52", "VarName53", "VarName55", "VarName56", "VarName58", "VarName59", "VarName61", "VarName62", "VarName64", "VarName65", "VarName67", "VarName68", "VarName70", "VarName71", "VarName73", "VarName74", "VarName76", "VarName77", "VarName79", "VarName80", "VarName82", "VarName83", "VarName85", "VarName86", "VarName88", "VarName89", "VarName91", "VarName92", "VarName94", "VarName95", "VarName97", "VarName98", "VarName100", "VarName101", "VarName103", "VarName104", "VarName106", "VarName107", "VarName109", "VarName110", "VarName112", "VarName113", "VarName115", "VarName116", "VarName118", "VarName119", "VarName121"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["VarName2", "VarName4", "VarName5", "VarName7", "VarName8", "VarName10", "VarName11", "VarName13", "VarName14", "VarName16", "VarName17", "VarName19", "VarName20", "VarName22", "VarName23", "VarName25", "VarName26", "VarName28", "VarName29", "VarName31", "VarName32", "VarName34", "VarName35", "VarName37", "VarName38", "VarName40", "VarName41", "VarName43", "VarName44", "VarName46", "VarName47", "VarName49", "VarName50", "VarName52", "VarName53", "VarName55", "VarName56", "VarName58", "VarName59", "VarName61", "VarName62", "VarName64", "VarName65", "VarName67", "VarName68", "VarName70", "VarName71", "VarName73", "VarName74", "VarName76", "VarName77", "VarName79", "VarName80", "VarName82", "VarName83", "VarName85", "VarName86", "VarName88", "VarName89", "VarName91", "VarName92", "VarName94", "VarName95", "VarName97", "VarName98", "VarName100", "VarName101", "VarName103", "VarName104", "VarName106", "VarName107", "VarName109", "VarName110", "VarName112", "VarName113", "VarName115", "VarName116", "VarName118", "VarName119", "VarName121"], "ThousandsSeparator", ",");

% 导入数据
U = readtable(filename, opts);

%% 转换为输出类型
U = table2array(U);
end
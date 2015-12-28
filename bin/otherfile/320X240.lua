-----------------------------------
--* file 320*240.lua
--* brief ���ļ���������Ļ�ֱ���Ϊ320*240�Ļ���.
--* version  1.0
--* author hezk
--* date 20140701
-----------------------------------

-------------------------------------------
--main.c--
-------------------------------------------
function LuaSetUIStyle()
	UI.PubSetUiStyle(0, "��", "��");
	UI.PubSetUIFunType(1);
	UI.PubShowStatusBar();
	UI.PubClearAll();
	return 0;
end


function LuaUnSetUIStyle()
	UI.PubCloseShowStatusBar();
	return 0;
end

function LuaFirstRunChk()
	UI.PubDisplayGen(2, "��ʼ��POS");
	UI.PubDisplayGen(4, "���Ժ�....");
	UI.PubUpdateWindow();
	return 0;
end
-------------------------------------------
--function LuaMenuFuncSel()
--	UI.PubClearAll();
--	UI.PubDisplayTitle("÷̩ŵ");
--	UI.PubDisplayStrInline(0, 2, "1�ֻ�����ȯ");
--	UI.PubDisplayStrInline(0, 3, "2������ȯ");
--	UI.PubDisplayStrInline(0, 4, "3���п���ȯ");
--	UI.PubDisplayStrInline(0, 5, "4��  ��  5��  �� ");
--	UI.PubDisplayStrInline(0, 6, "6��  ӡ  7��  �� ");		
--	UI.PubUpdateWindow();
--	return UI.PubGetKeyCode(60);
--end
-------------------------------------------
function LuaMenuFunc(szMenu)
	return UI.PubMenu("÷̩ŵ", 2, 5, 0, 0, 60, 2, szMenu);
end

--function LuaMenuFuncSel()
--	UI.PubClearAll();
--	return UI.PubDispPicList(0, 10, nil, "1�ֻ�����ȯ|2������ȯ|3���п���ȯ|4����֧��|5ɨ��֧��|4��  �� |5��  �� |6��  ӡ |7��  �� ", 60, 0);
--end

function LuaEnableDispDefault(szSoftVer, szShowName, szShowInfo)
	UI.PubDisplayLogo(15, 15, "TT130x109.jpg");
	UI.PubDisplayStr(8, 1, 1, szShowName);
	UI.PubDisplayStr(8, 2, 1, szSoftVer);
	UI.PubDisplayStr(8, 3, 1, szShowInfo);
	UI.PubUpdateWindow();
	return 0;
end

function LuaDisableDispDefault()
	return 0;
end

-------------------------------------------
--comm.c
------------------------------------------
function LuaCommInit()
	UI.PubClearAll();
	UI.PubDisplayGen(2, "��ʼ��ͨѶ");
	UI.PubDisplayGen(3, "���Ժ�...");
	UI.PubUpdateWindow();
	return 0
end

function LuaCommConnect(nDialFlag)
	UI.PubClear2To4();
	if nDialFlag == 1 then
		UI.PubDisplayStrInline(0, 2, "���ڲ���...");
	else
		UI.PubDisplayStrInline(0, 2, "������������...");
	end
	UI.PubDisplayStrInline(0, 4, "��<ȡ����>�˳�");
	UI.PubUpdateWindow();
	UI.PubSetShowXY(9,2,0);
	return 0
end

function LuaCommSend()
	UI.PubClear2To4();
	UI.PubDisplayStrInline(0, 2, "�����Ӷ��ܸ�");
	UI.PubDisplayStrInline(0, 3, "������...");
	UI.PubDisplayStrInline(0, 4, "�������ݰ�...");
	UI.PubUpdateWindow();
	return 0
end

function LuaCommRecv()
	UI.PubClear2To4();
	UI.PubDisplayStrInline(0, 2, "�����Ӷ��ܸ�");
	UI.PubDisplayStrInline(0, 3, "������...");
	UI.PubDisplayStrInline(0, 4, "���շ���...");
	UI.PubUpdateWindow();
	UI.PubSetShowXY(9,4,0);
	return 0
end

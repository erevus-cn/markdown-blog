-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-11-08 05:09:00
-- 服务器版本： 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_bbs`
--

CREATE TABLE IF NOT EXISTS `think_bbs` (
`id` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `create_time` varchar(45) NOT NULL DEFAULT 'CURRENT_TIMESTAMP'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `think_bbs`
--

INSERT INTO `think_bbs` (`id`, `mail`, `comment`, `create_time`) VALUES
(1, 'test', '111', 'CURRENT_TIMESTAMP'),
(2, 'test', '222', 'CURRENT_TIMESTAMP'),
(3, 'test', '33', 'CURRENT_TIMESTAMP'),
(4, 'test', '444', 'CURRENT_TIMESTAMP'),
(5, '1', '1', 'CURRENT_TIMESTAMP'),
(6, '&lt;script&gt;alert(1)&lt;/script&gt;', '&lt;script&gt;alert(1)&lt;/script&gt;', 'CURRENT_TIMESTAMP');

-- --------------------------------------------------------

--
-- 表的结构 `think_post`
--

CREATE TABLE IF NOT EXISTS `think_post` (
`id` smallint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(50) NOT NULL,
  `artical_category` varchar(25) NOT NULL,
  `artical_property` varchar(25) NOT NULL,
  `author` varchar(10) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `think_post`
--

INSERT INTO `think_post` (`id`, `title`, `content`, `tag`, `artical_category`, `artical_property`, `author`, `create_time`) VALUES
(22, '全军政治工作会议在古田召开 习近平出席', '全军政治工作会议10月30日在福建省上杭县古田镇召开，中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。本报记者岱天荣摄\r\n\r\n\r\n全军政治工作会议在古田召开 习近平出席会议并发表重要讲话　强调发挥政治工作对强军兴军的生命线作用　为实现党在新形势下的强军目标而奋斗\r\n\r\n军队政治工作的时代主题是，紧紧围绕实现中华民族伟大复兴的中国梦，为实现党在新形势下的强军目标提供坚强政治保证。\r\n\r\n加强和改进新形势下我军政治工作，当前最紧要的是把4个带根本性的东西立起来：把理想信念在全军牢固立起来，把党性原则在全军牢固立起来，把战斗力标准在全军牢固立起来，把政治工作威信在全军牢固立起来。\r\n\r\n加强和改进新形势下我军政治工作，当前要重点抓好以下5个方面：着力抓好铸牢军魂工作，着力抓好高中级干部管理，着力抓好作风建设和反腐败斗争，着力抓好战斗精神培育，着力抓好政治工作创新发展。\r\n\r\n新华网福建上杭古田11月1日电 全军政治工作会议10月30日在福建省上杭县古田镇召开。中共中央总书记、国家主席、中央军委主席习近平31日出席会议并发表重要讲话。习近平强调，军队政治工作的时代主题是，紧紧围绕实现中华民族伟大复兴的中国梦，为实现党在新形势下的强军目标提供坚强政治保证。全军必须坚持以马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观为指导，贯彻党中央关于全面推进依法治国和从严治党的部署要求，贯彻依法治军、从严治军方针，紧紧围绕我军政治工作的时代主题，加强和改进新形势下我军政治工作，充分发挥政治工作对强军兴军的生命线作用。\r\n\r\n山峦含黛、层林尽染，血脉传承、暖意萦怀。白墙青瓦的古田会议会址庄重古朴，“古田会议永放光芒”8个大字熠熠生辉。\r\n\r\n这里是我们党确立思想建党、政治建军原则的地方，是我军政治工作奠基的地方，是新型人民军队定型的地方。早在福建工作期间，习近平先后7次来到这里，大力倡导和弘扬古田会议精神。\r\n\r\n上午9时许，习近平来到会址前，亲切接见出席全军政治工作会议的全体代表，随后带领全体中央军委委员一起参观会址。习近平再次仔细观看了会址各个场所，在一幅幅照片和展板前驻足察看，并不时就有关问题向讲解员提问。他来到当年毛泽东作政治报告的厅堂，凝望着廊柱上富有鲜明战斗性的标语，注视着当年会议代表取暖留下的斑斑炭火印迹，同大家一起回忆先辈们探寻革命道路时筚路蓝缕、艰辛奋斗的情景，并向大家介绍他每次来古田参观的情形和感受。\r\n\r\n会址北侧的毛主席纪念园依山而建，庄重肃穆。习近平神色庄严，沿着151级台阶拾阶而上，向毛泽东雕像敬献花篮，亲手整理花篮上的缎带，带领大家向毛泽东雕像三鞠躬，并瞻仰了毛泽东雕像，深切缅怀老一辈革命家的丰功伟绩。\r\n\r\n古田会议纪念馆里，习近平认真听取讲解，不时在一件件文物、一组组数字前凝神观看，同大家深入交流，一起重温党领导创建新型人民军队的峥嵘岁月，强化坚持军队政治工作根本原则和制度的意识和责任。他表示，历史往往在经过时间沉淀后可以看得更加清晰。他要求大家深入思考我们当初是从哪里出发的、为什么出发的，接受思想洗礼，以利于更好前进。\r\n\r\n闽西革命老区是“红军之乡”“将军摇篮”，老区人民为中国革命付出了巨大牺牲、作出了巨大贡献。习近平对老区人民一直牵挂在心，先后19次来到闽西，每次都要专程看望老红军和军烈属等人员。这次来古田，习近平又专门把10位老红军、军烈属和“老地下党员、老游击队员、老交通员、老接头户、老苏区乡干部”代表请到古田党员干部教育基地，同他们亲切座谈。\r\n\r\n习近平拉着老同志们的手，嘘寒问暖，看到他们身子骨硬朗、精神头很好，感到十分欣慰。老同志们见到习近平，分外激动，有说不完的话，纷纷表达对党中央的信赖和对国家发展成就的喜悦。习近平动情地说，我们永远不要忘记老区，永远不要忘记老区人民，要一如既往支持老区建设，关心老红军、“五老”同志和军烈属的生活，经常听取他们的意见和建议，请他们言传身教，确保革命传统和优良作风薪火相传。\r\n\r\n午餐时间到了，习近平走进餐厅，同11位部队基层干部和英模代表围坐在一起，红米饭，南瓜汤，大家津津有味吃起了“红军饭”。习近平同大家边吃边谈，回顾老红军艰苦卓绝的战斗岁月。习近平语重心长叮嘱大家，青年一代是党和军队的未来和希望，革命事业靠你们接续奋斗，优良传统靠你们继承发扬。军队政治工作要大家一起来做，基层做好工作是重要环节。要带头学传统、爱传统、讲传统，带动部队官兵传承好红色基因、保持老红军本色。\r\n\r\n下午，习近平出席全军政治工作会议并发表重要讲话。他强调，革命的政治工作是革命军队的生命线。实行革命的政治工作，保证了我军始终是党的绝对领导下的革命军队，为我军战胜强大敌人和艰难险阻提供了不竭力量，使我军始终保持了人民军队的本色和作风。\r\n\r\n习近平指出，在长期实践中，我军政治工作形成了一整套优良传统，主要包括：坚持党指挥枪的根本原则和制度，坚持全心全意为人民服务的根本宗旨，坚持实事求是的思想路线，坚持群众路线的根本作风，坚持用科学理论武装官兵，坚持围绕党和军队中心任务发挥服务保证作用，坚持公道正派选拔使用干部，坚持官兵一致、发扬民主，坚持实行自觉的严格的纪律，坚持艰苦奋斗、牺牲奉献的革命精神，坚持党员干部带头、以身作则，等等。这些优良传统是我军政治工作的根本原则和内容。我们一定要深刻认识我军政治工作的重要地位和重大作用，把先辈们用鲜血和生命铸就的优良传统一代代传下去。\r\n\r\n习近平充分肯定这些年来在党中央、中央军委领导下，我军政治工作取得的成绩，指出党的十八大以来，紧紧围绕强军目标加强和改进政治工作，凝神铸魂，服务中心，正风肃纪，惩治腐败，强军兴军正能量不断汇聚，部队向心力、凝聚力不断增强。\r\n\r\n习近平强调，必须正视军队建设特别是思想政治建设方面存在的突出问题，特别要高度重视和严肃看待徐才厚案件，深刻反思教训，彻底肃清影响。习近平结合近年来军队案件查处、巡视工作、党的群众路线教育实践活动情况，深刻剖析了部队中特别是领导干部在思想政治和作风上存在的10个方面的突出问题。习近平指出，出现这些问题原因是多方面的，最根本的还是理想信念、党性原则、革命精神、组织纪律、思想作风等方面出了问题，要从政治工作的角度进行反思，认真总结教育者本身受教育不够，对领导干部管理失之于宽、失之于软，监督体系功能没有得到有效发挥，制度建设存在漏洞的教训，认真研究怎么认识、怎么解决这些问题，回应全军上下的关切，把我军政治工作的优良传统恢复和发扬起来，把军队各项建设和工作更好推向前进。\r\n\r\n习近平强调，当前，国内外形势发生深刻复杂变化，面对深化国防和军队改革这场考试，我军政治工作只能加强不能削弱，只能前进不能停滞，只能积极作为不能被动应对。当前最紧要的是把4个带根本性的东西立起来：要把理想信念在全军牢固立起来，适应强军目标要求，把坚定官兵理想信念作为固本培元、凝魂聚气的战略工程，把握新形势下铸魂育人的特点和规律，着力培养有灵魂、有本事、有血性、有品德的新一代革命军人。要把党性原则在全军牢固立起来，坚持党性原则是政治工作的根本要求，必须坚持党的原则第一、党的事业第一、人民利益第一，在党言党、在党忧党、在党为党，把爱党、忧党、兴党、护党落实到工作各个环节。要把战斗力标准在全军牢固立起来，把战斗力标准作为军队建设唯一的根本的标准，聚焦能打仗、打胜仗，健全完善党委工作和领导干部考核评价体系，探索政治工作服务保证战斗力建设的作用机理，形成有利于提高战斗力的舆论导向、工作导向、用人导向、政策导向，把政治工作贯穿到战斗力建设各个环节。要把政治工作威信在全军牢固立起来，从模范带头抓起，从领导带头抓起，引导各级干部特别是政治干部把真理力量和人格力量统一起来，坚持求真务实，坚持公道正派。\r\n\r\n习近平指出，加强和改进新形势下我军政治工作，当前要重点抓好以下5个方面：第一，着力抓好铸牢军魂工作。坚持党对军队绝对领导是强军之魂，筑牢军魂是我军政治工作的核心任务，任何时候都不能动摇。坚持党对军队绝对领导，必须坚持党委统一的集体领导下的首长分工负责制。各级党委要把落实党对军队绝对领导的制度作为第一位责任，把党领导军队一系列制度贯彻到部队建设各领域和完成任务全过程，确保党指挥枪的原则落地生根。第二，着力抓好高中级干部管理。军队要像军队的样子，很重要的要体现在高中级干部身上。军队好干部的标准，就是要做到对党忠诚、善谋打仗、敢于担当、实绩突出、清正廉洁。坚持党管干部、组织选人，坚持五湖四海，坚决整治用人风气，纯洁干部队伍，真正把好干部选出来、任用好。强化党组织管班子、管干部的功能，以严的要求、严的措施、严的纪律管理约束干部。第三，着力抓好作风建设和反腐败斗争。坚持抓常、抓细、抓长，坚持以改革的思路和办法推进反腐败工作，确保改进作风规范化、常态化、长效化，以锲而不舍、驰而不息的决心把作风建设和反腐败斗争引向深入。第四，着力抓好战斗精神培育。加强马克思主义战争观和我军根本职能教育，加强军事文化建设，发扬一不怕苦、二不怕死的精神，从难从严从实战要求出发摔打部队，注重发挥政策制度的调节作用，增强军事职业吸引力和军人使命感、荣誉感，培养官兵大无畏的英雄气概和英勇顽强的战斗作风。第五，着力抓好政治工作创新发展。积极推进政治工作思维理念、运行模式、指导方式、方法手段创新，提高政治工作信息化、法治化、科学化水平，形成全方位、宽领域、军民融合的政治工作格局，增强政治工作主动性和实效性。\r\n\r\n习近平强调，要抓好全军政治机关和政治干部队伍建设，强化政治意识、阵地意识、大局意识，努力学军事、学指挥、学科技，努力建设对党绝对忠诚、聚焦打仗有力、作风形象良好的政治机关和政治干部队伍。各级党委特别是正副书记要履行抓政治工作的职责，主动谋划政治工作，主动研究解决政治工作面临的矛盾和问题，加强对政治工作的组织领导，动员广大官兵积极参与，齐心协力开创我军政治工作新局面。\r\n\r\n会议开始前，习近平在会议中心一层大厅观看了“红色印记——红军标语展示”。\r\n\r\n这次全军政治工作会议，是习近平亲自提议在古田召开的。会议主要任务是，贯彻整风精神，研究解决新的历史条件下党从思想上政治上建设军队的重大问题。\r\n\r\n范长龙、许其亮、王沪宁、栗战书和常万全、房峰辉、张阳、赵克石、张又侠、吴胜利、马晓天、魏凤和分别参加有关活动。\r\n\r\n四总部有关领导，大单位主要领导和政治部主任，军委办公厅领导，副大军区级和军级单位政治委员，总部和大单位机关有关同志，基层和英模代表，以及公安部有关领导共420余名代表出席会议。', '', 'default', '', 'admin', '2014-11-02 07:04:04'),
(23, 'markdownPC编辑器Mou 帮助文档', '\r\n![Mou icon](http://25.io/mou/Mou_128.png)\r\n\r\n## Overview\r\n\r\n**Mou**, the missing Markdown editor for *web developers*.\r\n\r\n### Syntax\r\n\r\n#### Strong and Emphasize \r\n\r\n**strong** or __strong__ ( Cmd + B )\r\n\r\n*emphasize* or _emphasize_ ( Cmd + I )\r\n\r\n**Sometimes I want a lot of text to be bold.\r\nLike, seriously, a _LOT_ of text**\r\n\r\n#### Blockquotes\r\n\r\n> Right angle brackets &gt; are used for block quotes.\r\n\r\n#### Links and Email\r\n\r\nAn email <example@example.com> link.\r\n\r\nSimple inline link <http://chenluois.com>, another inline link [Smaller](http://25.io/smaller/), one more inline link with title [Resize](http://resizesafari.com "a Safari extension").\r\n\r\nA [reference style][id] link. Input id, then anywhere in the doc, define the link with corresponding id:\r\n\r\n[id]: http://25.io/mou/ "Markdown editor on Mac OS X"\r\n\r\nTitles ( or called tool tips ) in the links are optional.\r\n\r\n#### Images\r\n\r\nAn inline image ![Smaller icon](http://25.io/smaller/favicon.ico "Title here"), title is optional.\r\n\r\nA ![Resize icon][2] reference style image.\r\n\r\n[2]: http://resizesafari.com/favicon.ico "Title"\r\n\r\n#### Inline code and Block code\r\n\r\nInline code are surround by `backtick` key. To create a block code:\r\n\r\n	Indent each line by at least 1 tab, or 4 spaces.\r\n    var Mou = exactlyTheAppIwant; \r\n\r\n####  Ordered Lists\r\n\r\nOrdered lists are created using "1." + Space:\r\n\r\n1. Ordered list item\r\n2. Ordered list item\r\n3. Ordered list item\r\n\r\n#### Unordered Lists\r\n\r\nUnordered list are created using "*" + Space:\r\n\r\n* Unordered list item\r\n* Unordered list item\r\n* Unordered list item \r\n\r\nOr using "-" + Space:\r\n\r\n- Unordered list item\r\n- Unordered list item\r\n- Unordered list item\r\n\r\n#### Hard Linebreak\r\n\r\nEnd a line with two or more spaces will create a hard linebreak, called `<br />` in HTML. ( Control + Return )  \r\nAbove line ended with 2 spaces.\r\n\r\n#### Horizontal Rules\r\n\r\nThree or more asterisks or dashes:\r\n\r\n***\r\n\r\n---\r\n\r\n- - - -\r\n\r\n#### Headers\r\n\r\nSetext-style:\r\n\r\nThis is H1\r\n==========\r\n\r\nThis is H2\r\n----------\r\n\r\natx-style:\r\n\r\n# This is H1\r\n## This is H2\r\n### This is H3\r\n#### This is H4\r\n##### This is H5\r\n###### This is H6\r\n\r\n\r\n### Extra Syntax\r\n\r\n#### Footnotes\r\n\r\nFootnotes work mostly like reference-style links. A footnote is made of two things: a marker in the text that will become a superscript number; a footnote definition that will be placed in a list of footnotes at the end of the document. A footnote looks like this:\r\n\r\nThat''s some text with a footnote.[^1]\r\n\r\n[^1]: And that''s the footnote.\r\n\r\n\r\n#### Strikethrough\r\n\r\nWrap with 2 tilde characters:\r\n\r\n~~Strikethrough~~\r\n\r\n\r\n#### Fenced Code Blocks\r\n\r\nStart with a line containing 3 or more backticks, and ends with the first line with the same number of backticks:\r\n\r\n```\r\nFenced code blocks are like Stardard Markdown’s regular code\r\nblocks, except that they’re not indented and instead rely on\r\na start and end fence lines to delimit the code block.\r\n```\r\n\r\n#### Tables\r\n\r\nA simple table looks like this:\r\n\r\nFirst Header | Second Header | Third Header\r\n------------ | ------------- | ------------\r\nContent Cell | Content Cell  | Content Cell\r\nContent Cell | Content Cell  | Content Cell\r\n\r\nIf you wish, you can add a leading and tailing pipe to each line of the table:\r\n\r\n| First Header | Second Header | Third Header |\r\n| ------------ | ------------- | ------------ |\r\n| Content Cell | Content Cell  | Content Cell |\r\n| Content Cell | Content Cell  | Content Cell |\r\n\r\nSpecify alignment for each column by adding colons to separator lines:\r\n\r\nFirst Header | Second Header | Third Header\r\n:----------- | :-----------: | -----------:\r\nLeft         | Center        | Right\r\nLeft         | Center        | Right\r\n\r\n\r\n### Shortcuts\r\n\r\n#### View\r\n\r\n* Toggle live preview: Shift + Cmd + I\r\n* Toggle Words Counter: Shift + Cmd + W\r\n* Toggle Transparent: Shift + Cmd + T\r\n* Toggle Floating: Shift + Cmd + F\r\n* Left/Right = 1/1: Cmd + 0\r\n* Left/Right = 3/1: Cmd + +\r\n* Left/Right = 1/3: Cmd + -\r\n* Toggle Writing orientation: Cmd + L\r\n* Toggle fullscreen: Control + Cmd + F\r\n\r\n#### Actions\r\n\r\n* Copy HTML: Option + Cmd + C\r\n* Strong: Select text, Cmd + B\r\n* Emphasize: Select text, Cmd + I\r\n* Inline Code: Select text, Cmd + K\r\n* Strikethrough: Select text, Cmd + U\r\n* Link: Select text, Control + Shift + L\r\n* Image: Select text, Control + Shift + I\r\n* Select Word: Control + Option + W\r\n* Select Line: Shift + Cmd + L\r\n* Select All: Cmd + A\r\n* Deselect All: Cmd + D\r\n* Convert to Uppercase: Select text, Control + U\r\n* Convert to Lowercase: Select text, Control + Shift + U\r\n* Convert to Titlecase: Select text, Control + Option + U\r\n* Convert to List: Select lines, Control + L\r\n* Convert to Blockquote: Select lines, Control + Q\r\n* Convert to H1: Cmd + 1\r\n* Convert to H2: Cmd + 2\r\n* Convert to H3: Cmd + 3\r\n* Convert to H4: Cmd + 4\r\n* Convert to H5: Cmd + 5\r\n* Convert to H6: Cmd + 6\r\n* Convert Spaces to Tabs: Control + [\r\n* Convert Tabs to Spaces: Control + ]\r\n* Insert Current Date: Control + Shift + 1\r\n* Insert Current Time: Control + Shift + 2\r\n* Insert entity <: Control + Shift + ,\r\n* Insert entity >: Control + Shift + .\r\n* Insert entity &: Control + Shift + 7\r\n* Insert entity Space: Control + Shift + Space\r\n* Insert Scriptogr.am Header: Control + Shift + G\r\n* Shift Line Left: Select lines, Cmd + [\r\n* Shift Line Right: Select lines, Cmd + ]\r\n* New Line: Cmd + Return\r\n* Comment: Cmd + /\r\n* Hard Linebreak: Control + Return\r\n\r\n#### Edit\r\n\r\n* Auto complete current word: Esc\r\n* Find: Cmd + F\r\n* Close find bar: Esc\r\n\r\n#### Post\r\n\r\n* Post on Scriptogr.am: Control + Shift + S\r\n* Post on Tumblr: Control + Shift + T\r\n\r\n#### Export\r\n\r\n* Export HTML: Option + Cmd + E\r\n* Export PDF:  Option + Cmd + P\r\n\r\n\r\n### And more?\r\n\r\nDon''t forget to check Preferences, lots of useful options are there.\r\n\r\nFollow [@Mou](https://twitter.com/mou) on Twitter for the latest news.\r\n\r\nFor feedback, use the menu `Help` - `Send Feedback`', '', 'default', '', 'admin', '2014-11-02 07:06:09'),
(24, '某公司内部文档', 'poc maker\r\n===========\r\n\r\n    poc 模板生成工具\r\n\r\n### Help\r\n\r\n    python poc_maker.py\r\n\r\n    python poc_maker.py --report\r\n\r\n\r\n\r\n    python poc_clean_info.py -h\r\n    -h, --help            show this help message and exit\r\n    -u VULURL, --vulurl VULURL Vulnerability Refer url eg. -u http://wooyun.org/bugs/wooyun-2014-073369\r\n    -t VULTYPE, --vultype VULTYPE Vulnerability Type eg. -t sqli\r\n    -i VULID, --vulid VULID Vulnerability ID eg. -i 111 id自动补全4位,变为0111\r\n    -o VULTOOL, --vultool VULTOOL tools eg.sqlmap or Firefox\r\n    -s VULDESC, --vuldesc VULDESC Vulnerability description\r\n    -n APPNAME, --appname APPNAME app name eg. wordpress\r\n\r\n    python poc_clean_info.py -u http://wooyun.org/bugs/wooyun-2014-073369\r\n\r\n    [*] read info from http://wooyun.org/bugs/wooyun-2014-073369\r\n    appname    :=\r\n    appversion :=\r\n    appvendor  := http://www.hanweb.com\r\n\r\n    vulid      :=\r\n    vulpath    :=\r\n    vultype    := SQL Injection\r\n    vulreferer := http://wooyun.org/bugs/wooyun-2014-073369\r\n    vuldesc    :=\r\n    vuleffect  := SQL注入,泄露信息\r\n    vuldate    := 2014-08-25\r\n\r\n\r\n    tools      := Firefox\r\n    tooldesc   := 浏览器\r\n\r\n    myname     :=\r\n    shortname  :=\r\n\r\n    [+] finished clean.\r\n\r\n\r\n### Example\r\n* poc_info.txt填入info\r\n* python poc_maker.py 根据poc_info生成poc模板,包括py文件及doc文档,同时生成本周工作日目录\r\n* python pocmaker.py --report 会根据本周工作日目录下poc生成周报\r\n* poc_clean_info.py ,清空poc_info.txt,避免忘记修改某些(无参数默认清空,参数-u根据url读取基本信息\r\n,如-u http://wooyun.org/bugs/wooyun-2014-073369 也可指定参数修改info)\r\n\r\n\r\n\r\n### Other\r\n* template 涉及公司代码, 暂缺\r\n\r\n\r\n### Changelog\r\n* 1.根据poc_info信息填入必需的繁琐信息表格\r\n* 2.文件及目录名的命名规则较繁琐,故一并生成,doc文件为读取xml修改节点,py文件为关键字替换\r\n* 3.增加clea_info.py,用于清空poc_info.txt,避免忘记修改某些条目\r\n* 4.clea_info.py 新增从wooyun url提取几条信息(有限信息,正在进行...)\r\n* 5.增加weekdays.py 用于生成工作日期(poc_maker.py使用weekdays生成日期目录)\r\n* 6.增加report_maker.py 用于生成周报(通过工作日目录下的poc信息)\r\n* 7.增加支持新框架模板(new_poc_template)\r\n* 8.poc_clean_info.py 增加参数,无法自动读取时手动指定,主要用于修改默认tools及vultype\r\n* 9.增加utils目录\r\n* 10.poc_maker.py增加--report\r\n', '', 'default', '', 'admin', '2014-11-02 07:06:56'),
(25, 'Markdown: Basics （快速入门）', '什么是Markdown\r ---------------------\r Markdown是一个将文本转化为HTML的工具。简单来说，Markdown是一个兼顾可读性与易用性的轻量级标记体系。Markdown并不追求大而全，它只关心HTML里最常用的几个标记，对于一些不常用的标记它允许直接将HTML标记插入文本。\r \r #标题语法\r \r Markdown提供了两种方式（Setext和Atx）来显示标题。\r \r 语法：\r \r Setext方式\r \r     标题1\r     =================\r     \r     标题2\r     -----------------\r     \r     Atx方式\r     # 标题1\r     ## 标题2\r     ###### 标题6\r \r 效果：\r Setext方式\r 标题1\r =================\r \r 标题2\r -----------------\r \r Atx方式\r # 标题1\r ## 标题2\r ###### 标题6  \r   \r #换行语法\r \r 在文字的末尾使用两个或两个以上的空格来表示换行。\r \r #引用语法\r \r 行首使用&gt;加上一个空格表示引用段落，内部可以嵌套多个引用。\r \r 语法：\r \r     &gt;这是一个引用，\r     &gt; 这里木有换行，   \r     &gt; 在这里换行了。\r     &gt; &gt; 内部嵌套\r \r 效果\r &gt; 这是一个引用，\r &gt; 这里木有换行，   \r &gt; 在这里换行了。\r &gt; &gt; 内部嵌套\r \r #列表语法\r \r 无序列表使用*、+或-后面加上空格来表示。\r \r     * Item 1\r     * Item 2\r     * Item 3\r     \r     + Item 1\r     + Item 2\r     + Item 3\r     \r     - Item 1\r     - Item 2\r     - Item 3\r \r 效果\r \r * Item 1\r * Item 2\r * Item 3\r \r + Item 1\r + Item 2\r + Item 3\r \r - Item 1\r - Item 2\r - Item 3\r \r 有序列表使用数字加英文句号加空格表示。\r \r 语法：\r \r     1. Item 1\r     2. Item 2\r     3. Item 3\r \r 效果：\r \r 1. Item 1\r 2. Item 2\r 3. Item 3\r \r #代码引用语法：\r \r 行内代码使用反斜杠`表示。\r 代码段落则是在每行文字前加4个空格或者1个缩进符表示。\r \r 语法：\r \r Bash中可以使用echo来进行输出。\r 行内代码使用反斜杠`表示。\r 代码段落则是在每行文字前加4个空格或者1个缩进符表示。\r \r 效果：\r \r \r     Bash中可以使用echo来进行输出。\r         $ echo \\\\\\''Something\\\\\\''\r         $ echo -e \\\\\\''\\\\\\\\tSomething\\\\\\\\n\\\\\\''\r \r 效果：\r Bash中可以使用echo来进行输出。\r \r $ echo \\\\\\''Something\\\\\\''\r \r $ echo -e \\\\\\''\\\\\\\\tSomething\\\\\\\\n\\\\\\''\r \r #强调语法：\r \r Markdown使用\\\\\\\\*或\\\\\\\\_表示强调。\r \r     单星号 = *斜体*\r     单下划线 = _斜体_\r     双星号 = **加粗**\r     双下划线 = __加粗__\r \r 效果：\r 单星号 = *斜体*\r \r 单下划线 = _斜体_\r \r 双星号 = **加粗**\r \r 双下划线 = __加粗__\r \r #链接语法\r \r Inline：以中括号标记显示的链接文本，后面紧跟用小括号包围的链接。如果链接有title属性，则在链接中使用空格加\\&quot;title属性\\&quot;。\r \r Reference：一般应用于多个不同位置使用相同链接。通常分为两个部分，调用部分为[链接文本][ref]；定义部分可以出现在文本中的其他位置，格式为[ref]: http://some/link/address (可选的标题)。\r 注：ref中不区分大小写。\r \r     这是一个Inline[示例](http://equation85.github.com \\&quot;可选的title\\&quot;)。\r     这是一个Reference[示例][ref]。\r     [ref]: http://equation85.github.com\r \r 效果：\r 这是一个Inline[示例](http://equation85.github.com \\&quot;可选的title\\&quot;)。\r \r 这是一个Reference[示例][ref]。\r \r [ref]: http://equation85.github.com', '语法', 'default', '', 'admin', '2014-11-02 06:59:14');

-- --------------------------------------------------------

--
-- 表的结构 `think_upload`
--

CREATE TABLE IF NOT EXISTS `think_upload` (
`id` smallint(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `think_upload`
--

INSERT INTO `think_upload` (`id`, `file`) VALUES
(4, '52a034bd1741d.gif'),
(5, '52a035cb79015.jpg'),
(6, '52a035e0c3249.jpg52a035e0c6872.gif'),
(7, '52a0360cbccb7.jpg,52a0360cc1f9a.png,52a0360cca069.jpg,'),
(8, '52a1891c7519f.jpg,'),
(9, '52a1894523af4.jpg,'),
(10, '52a18bc7b549a.jpg,52a18bc7c19a7.jpg,52a18bc7cd83a.jpg,52a18bc7da83f.jpg,'),
(11, '52a18c456c71c.jpg,52a18c4576dac.jpg,52a18c4581347.jpg,'),
(12, '52a18c5b1f885.jpg,52a18c5b2d0d1.jpg,52a18c5b39665.jpg,52a18c5b42497.jpg,52a18c5b4d09e.jpg,52a18c5b5b522.jpg,'),
(13, '52a18d41e6f08.jpg,52a18d42003d3.jpg,52a18d420d0b0.jpg,52a18d421bfb0.jpg,');

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE IF NOT EXISTS `think_user` (
`id` smallint(6) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`id`, `username`, `email`, `create_time`, `password`) VALUES
(1, 'admin', 'lemon@qq.com', '2013-12-02 08:14:47', '21232f297a57a5a743894a0e4a801fc3'),
(17, 'test1', '1234256@qq.com', '2014-11-07 17:17:38', '14e1b600b1fd579f47433b88e8d85291'),
(16, 'test', '123456@qq.com', '2014-11-07 17:07:31', '14e1b600b1fd579f47433b88e8d85291'),
(15, 'erevus', '250353726@qq.com', '2014-10-28 05:41:34', '14e1b600b1fd579f47433b88e8d85291');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_bbs`
--
ALTER TABLE `think_bbs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_post`
--
ALTER TABLE `think_post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_upload`
--
ALTER TABLE `think_upload`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_bbs`
--
ALTER TABLE `think_bbs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `think_post`
--
ALTER TABLE `think_post`
MODIFY `id` smallint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `think_upload`
--
ALTER TABLE `think_upload`
MODIFY `id` smallint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `think_user`
--
ALTER TABLE `think_user`
MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

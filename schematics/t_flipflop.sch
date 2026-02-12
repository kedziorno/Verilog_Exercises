<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Q" />
        <signal name="T" />
        <signal name="CE" />
        <signal name="C" />
        <signal name="CLR" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="T" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="CLR" />
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="fdce" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="Q" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="T" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <rect width="352" x="1664" y="920" height="48" />
        <rect width="352" x="1664" y="872" height="48" />
        <rect width="352" x="1664" y="824" height="48" />
        <rect width="352" x="1664" y="776" height="48" />
        <line x2="1888" y1="776" y2="1016" x1="1888" />
        <line x2="1760" y1="776" y2="1016" x1="1760" />
        <text x="1680" y="800">T INPUT</text>
        <text x="1776" y="800">OUTPUT PS</text>
        <text x="1904" y="800">OUTPUT NS</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1704" y="848">0</text>
        <text x="1868" y="808">Qn</text>
        <text x="1980" y="808">Qn+1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1816" y="848">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1704" y="896">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1816" y="944">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1816" y="896">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1704" y="944">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1704" y="992">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1816" y="992">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1952" y="848">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1952" y="992">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1952" y="896">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1952" y="944">1</text>
        <arc ex="1696" ey="760" sx="1840" sy="760" r="90" cx="1767" cy="814" />
        <arc ex="1716" ey="760" sx="1952" sy="760" r="126" cx="1833" cy="806" />
        <circle r="6" cx="1840" cy="758" />
        <line x2="1696" y1="760" y2="744" x1="1696" />
        <line x2="1712" y1="744" y2="760" x1="1696" />
        <line x2="1696" y1="760" y2="760" x1="1712" />
        <line x2="1952" y1="760" y2="760" x1="1936" />
        <line x2="1952" y1="760" y2="744" x1="1952" />
        <line x2="1936" y1="744" y2="760" x1="1952" />
        <rect width="352" x="2144" y="968" height="48" />
        <rect width="352" x="2144" y="920" height="48" />
        <rect width="352" x="2144" y="872" height="48" />
        <rect width="352" x="2144" y="824" height="48" />
        <rect width="352" x="2144" y="776" height="48" />
        <line x2="2368" y1="776" y2="1016" x1="2368" />
        <line x2="2240" y1="776" y2="1016" x1="2240" />
        <text x="2160" y="800">D INPUT</text>
        <text x="2256" y="800">OUTPUT PS</text>
        <text x="2384" y="800">OUTPUT NS</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2184" y="848">0</text>
        <text x="2348" y="808">Qn</text>
        <text x="2460" y="808">Qn+1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2296" y="848">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2184" y="896">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2296" y="944">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2296" y="896">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2184" y="944">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2184" y="992">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2296" y="992">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2432" y="848">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2432" y="896">0</text>
        <arc ex="2176" ey="760" sx="2320" sy="760" r="90" cx="2247" cy="814" />
        <arc ex="2196" ey="760" sx="2432" sy="760" r="126" cx="2313" cy="806" />
        <circle r="6" cx="2320" cy="758" />
        <line x2="2176" y1="760" y2="744" x1="2176" />
        <line x2="2192" y1="744" y2="760" x1="2176" />
        <line x2="2176" y1="760" y2="760" x1="2192" />
        <line x2="2432" y1="760" y2="760" x1="2416" />
        <line x2="2432" y1="760" y2="744" x1="2432" />
        <line x2="2416" y1="744" y2="760" x1="2432" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="200" x="1788" y="832" height="32" />
        <rect style="linewidth:W;linecolor:rgb(0,0,255)" width="200" x="1788" y="880" height="32" />
        <rect style="linewidth:W;linecolor:rgb(255,255,0)" width="200" x="1788" y="928" height="32" />
        <rect style="linewidth:W;linecolor:rgb(0,255,0)" width="200" x="1788" y="976" height="32" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0)" width="200" x="2268" y="832" height="32" />
        <rect style="linewidth:W;linecolor:rgb(0,255,0)" width="200" x="2268" y="880" height="32" />
        <rect style="linewidth:W;linecolor:rgb(255,255,0)" width="200" x="2268" y="928" height="32" />
        <text style="fontsize:32;fontname:Times New Roman" x="2432" y="944">1</text>
        <rect style="linewidth:W;linecolor:rgb(0,0,255)" width="200" x="2268" y="976" height="32" />
        <text style="fontsize:32;fontname:Times New Roman" x="2432" y="992">1</text>
        <rect width="200" x="1980" y="1320" height="48" />
        <rect width="200" x="1980" y="1272" height="48" />
        <rect width="200" x="1980" y="1224" height="48" />
        <rect width="200" x="1980" y="1176" height="48" />
        <rect width="200" x="1980" y="1128" height="48" />
        <text x="1996" y="1152">T INPUT</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2020" y="1200">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2020" y="1248">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2020" y="1296">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2020" y="1344">1</text>
        <text x="2104" y="1152">D INPUT</text>
        <line x2="2084" y1="1128" y2="1368" x1="2084" />
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1200">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1344">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1248">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1296">1</text>
        <line x2="2212" y1="1196" y2="1196" style="linewidth:W;linecolor:rgb(255,0,0)" x1="2588" />
        <line x2="2212" y1="1340" y2="1340" style="linewidth:W;linecolor:rgb(0,255,0)" x1="2572" />
        <line x2="2532" y1="940" y2="940" style="linewidth:W;linecolor:rgb(255,255,0)" x1="2556" />
        <line x2="2212" y1="1292" y2="1292" style="linewidth:W;linecolor:rgb(255,255,0)" x1="2556" />
        <line x2="2532" y1="988" y2="988" style="linewidth:W;linecolor:rgb(0,0,255)" x1="2544" />
        <line x2="2212" y1="1244" y2="1244" style="linewidth:W;linecolor:rgb(0,0,255)" x1="2544" />
        <line x2="2544" y1="1244" y2="988" style="linewidth:W;linecolor:rgb(0,0,255)" x1="2544" />
        <line x2="2556" y1="1292" y2="940" style="linewidth:W;linecolor:rgb(255,255,0)" x1="2556" />
        <line x2="2572" y1="1340" y2="892" style="linewidth:W;linecolor:rgb(0,255,0)" x1="2572" />
        <line x2="2588" y1="1196" y2="844" style="linewidth:W;linecolor:rgb(255,0,0)" x1="2588" />
        <rect width="160" x="2012" y="1544" height="160" />
        <line x2="2092" y1="1544" y2="1704" x1="2092" />
        <line x2="2172" y1="1624" y2="1624" x1="2012" />
        <line x2="2012" y1="1464" y2="1544" x1="1932" />
        <text style="fontsize:32;fontname:Arial" x="1968" y="1476">Qn</text>
        <text style="fontsize:32;fontname:Arial" x="1932" y="1516">T</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1980" y="1588">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2044" y="1524">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="1980" y="1668">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1524">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2044" y="1588">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1668">0</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2124" y="1588">1</text>
        <text style="fontsize:32;fontname:Times New Roman" x="2044" y="1668">1</text>
        <line x2="2316" y1="1060" y2="1044" style="linewidth:W" x1="2316" />
        <line x2="1820" y1="1060" y2="1060" style="linewidth:W" x1="2316" />
        <line x2="1820" y1="1044" y2="1060" style="linewidth:W" x1="1820" />
        <line x2="1556" y1="1516" y2="796" style="linewidth:W" x1="1556" />
        <line x2="1908" y1="1516" y2="1516" style="linewidth:W" x1="1556" />
        <line x2="1988" y1="1412" y2="1436" style="linewidth:W" x1="1988" />
        <circle style="linewidth:W" r="8" cx="1988" cy="1444" />
        <line x2="1820" y1="1412" y2="1412" style="linewidth:W" x1="1988" />
        <circle style="linewidth:W" r="8" cx="2204" cy="1196" />
        <circle style="linewidth:W" r="8" cx="2204" cy="1244" />
        <circle style="linewidth:W" r="8" cx="2204" cy="1292" />
        <circle style="linewidth:W" r="8" cx="2204" cy="1340" />
        <circle style="linewidth:W" r="8" cx="2524" cy="988" />
        <circle style="linewidth:W" r="8" cx="2524" cy="940" />
        <circle style="linewidth:W" r="8" cx="2524" cy="892" />
        <circle style="linewidth:W" r="8" cx="2524" cy="844" />
        <line x2="2532" y1="844" y2="844" style="linewidth:W;linecolor:rgb(255,0,0)" x1="2588" />
        <line x2="2532" y1="892" y2="892" style="linewidth:W;linecolor:rgb(0,255,0)" x1="2572" />
        <circle style="linewidth:W" r="8" cx="2316" cy="1036" />
        <rect width="352" x="1664" y="968" height="48" />
        <circle style="linewidth:W" r="8" cx="1820" cy="1036" />
        <line x2="1820" y1="1060" y2="1412" style="linewidth:W" x1="1820" />
        <line x2="1636" y1="796" y2="796" style="linewidth:W" x1="1556" />
        <circle style="linewidth:W" r="8" cx="1644" cy="796" />
        <circle style="linewidth:W" r="8" cx="1916" cy="1516" />
        <rect style="linewidth:W" width="64" x="2100" y="1552" height="64" />
        <rect style="linewidth:W" width="64" x="2020" y="1632" height="64" />
        <text style="fontsize:40;fontname:Courier New" x="1640" y="640">CONVERSION METHOD D TO T FLIP-FLOP</text>
        <rect style="linestyle:Dash" width="1072" x="1536" y="668" height="1056" />
        <rect style="linestyle:Dash" width="1072" x="144" y="92" height="1056" />
        <instance x="624" y="752" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="608" y1="480" y2="480" x1="592" />
            <wire x2="608" y1="480" y2="496" x1="608" />
            <wire x2="624" y1="496" y2="496" x1="608" />
        </branch>
        <branch name="Q">
            <wire x2="320" y1="368" y2="448" x1="320" />
            <wire x2="336" y1="448" y2="448" x1="320" />
            <wire x2="1024" y1="368" y2="368" x1="320" />
            <wire x2="1024" y1="368" y2="496" x1="1024" />
            <wire x2="1040" y1="496" y2="496" x1="1024" />
            <wire x2="1024" y1="496" y2="496" x1="1008" />
        </branch>
        <branch name="T">
            <wire x2="320" y1="512" y2="512" x1="304" />
            <wire x2="336" y1="512" y2="512" x1="320" />
        </branch>
        <branch name="CE">
            <wire x2="624" y1="560" y2="560" x1="592" />
        </branch>
        <branch name="C">
            <wire x2="608" y1="624" y2="624" x1="592" />
            <wire x2="624" y1="624" y2="624" x1="608" />
        </branch>
        <branch name="CLR">
            <wire x2="624" y1="720" y2="720" x1="592" />
        </branch>
        <instance x="336" y="576" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="592" y="560" name="CE" orien="R180" />
        <iomarker fontsize="28" x="592" y="720" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="304" y="512" name="T" orien="R180" />
        <iomarker fontsize="28" x="1040" y="496" name="Q" orien="R0" />
        <iomarker fontsize="28" x="592" y="624" name="C" orien="R180" />
        <text style="fontsize:40;fontname:Courier New" x="552" y="60">SCHEMATIC</text>
    </sheet>
</drawing>
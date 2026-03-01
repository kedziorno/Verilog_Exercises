<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i7" />
        <signal name="i6" />
        <signal name="i5" />
        <signal name="i4" />
        <signal name="i3" />
        <signal name="i2" />
        <signal name="i1" />
        <signal name="i0" />
        <signal name="i15" />
        <signal name="i14" />
        <signal name="i13" />
        <signal name="i12" />
        <signal name="i11" />
        <signal name="i10" />
        <signal name="i9" />
        <signal name="XLXN_25" />
        <signal name="en" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="o2" />
        <signal name="o0" />
        <signal name="o1" />
        <signal name="i8" />
        <signal name="o3" />
        <port polarity="Input" name="i7" />
        <port polarity="Input" name="i6" />
        <port polarity="Input" name="i5" />
        <port polarity="Input" name="i4" />
        <port polarity="Input" name="i3" />
        <port polarity="Input" name="i2" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="i0" />
        <port polarity="Input" name="i15" />
        <port polarity="Input" name="i14" />
        <port polarity="Input" name="i13" />
        <port polarity="Input" name="i12" />
        <port polarity="Input" name="i11" />
        <port polarity="Input" name="i10" />
        <port polarity="Input" name="i9" />
        <port polarity="Input" name="en" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <port polarity="Input" name="i8" />
        <port polarity="Output" name="o3" />
        <blockdef name="enc_8_3">
            <timestamp>2026-3-1T14:48:7</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <block symbolname="enc_8_3" name="XLXI_1">
            <blockpin signalname="i7" name="i7" />
            <blockpin signalname="i6" name="i6" />
            <blockpin signalname="i5" name="i5" />
            <blockpin signalname="i4" name="i4" />
            <blockpin signalname="en" name="en" />
            <blockpin signalname="i3" name="i3" />
            <blockpin signalname="i2" name="i2" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="XLXN_28" name="o2" />
            <blockpin signalname="XLXN_32" name="o0" />
            <blockpin signalname="XLXN_30" name="o1" />
        </block>
        <block symbolname="enc_8_3" name="XLXI_2">
            <blockpin signalname="i15" name="i7" />
            <blockpin signalname="i14" name="i6" />
            <blockpin signalname="i13" name="i5" />
            <blockpin signalname="i12" name="i4" />
            <blockpin signalname="en" name="en" />
            <blockpin signalname="i11" name="i3" />
            <blockpin signalname="i10" name="i2" />
            <blockpin signalname="i9" name="i1" />
            <blockpin signalname="i8" name="i0" />
            <blockpin signalname="XLXN_29" name="o2" />
            <blockpin signalname="XLXN_31" name="o0" />
            <blockpin signalname="XLXN_27" name="o1" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="o2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="o0" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="o1" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_6">
            <blockpin signalname="i15" name="I0" />
            <blockpin signalname="i14" name="I1" />
            <blockpin signalname="i13" name="I2" />
            <blockpin signalname="i12" name="I3" />
            <blockpin signalname="i11" name="I4" />
            <blockpin signalname="i10" name="I5" />
            <blockpin signalname="i9" name="I6" />
            <blockpin signalname="i8" name="I7" />
            <blockpin signalname="o3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="928" name="XLXI_1" orien="R0">
        </instance>
        <instance x="784" y="1600" name="XLXI_2" orien="R0">
        </instance>
        <branch name="i7">
            <wire x2="720" y1="384" y2="384" x1="560" />
            <wire x2="784" y1="384" y2="384" x1="720" />
        </branch>
        <branch name="i6">
            <wire x2="720" y1="448" y2="448" x1="560" />
            <wire x2="784" y1="448" y2="448" x1="720" />
        </branch>
        <branch name="i5">
            <wire x2="720" y1="512" y2="512" x1="560" />
            <wire x2="784" y1="512" y2="512" x1="720" />
        </branch>
        <branch name="i4">
            <wire x2="720" y1="576" y2="576" x1="560" />
            <wire x2="784" y1="576" y2="576" x1="720" />
        </branch>
        <branch name="i3">
            <wire x2="720" y1="704" y2="704" x1="560" />
            <wire x2="784" y1="704" y2="704" x1="720" />
        </branch>
        <branch name="i2">
            <wire x2="720" y1="768" y2="768" x1="560" />
            <wire x2="784" y1="768" y2="768" x1="720" />
        </branch>
        <branch name="i1">
            <wire x2="720" y1="832" y2="832" x1="560" />
            <wire x2="784" y1="832" y2="832" x1="720" />
        </branch>
        <branch name="i0">
            <wire x2="720" y1="896" y2="896" x1="560" />
            <wire x2="784" y1="896" y2="896" x1="720" />
        </branch>
        <branch name="i15">
            <wire x2="656" y1="1056" y2="1056" x1="560" />
            <wire x2="784" y1="1056" y2="1056" x1="656" />
            <wire x2="656" y1="1056" y2="2128" x1="656" />
            <wire x2="848" y1="2128" y2="2128" x1="656" />
        </branch>
        <branch name="i14">
            <wire x2="672" y1="1120" y2="1120" x1="560" />
            <wire x2="784" y1="1120" y2="1120" x1="672" />
            <wire x2="672" y1="1120" y2="2064" x1="672" />
            <wire x2="848" y1="2064" y2="2064" x1="672" />
        </branch>
        <branch name="i13">
            <wire x2="688" y1="1184" y2="1184" x1="560" />
            <wire x2="784" y1="1184" y2="1184" x1="688" />
            <wire x2="688" y1="1184" y2="2000" x1="688" />
            <wire x2="848" y1="2000" y2="2000" x1="688" />
        </branch>
        <branch name="i12">
            <wire x2="704" y1="1248" y2="1248" x1="560" />
            <wire x2="784" y1="1248" y2="1248" x1="704" />
            <wire x2="704" y1="1248" y2="1936" x1="704" />
            <wire x2="848" y1="1936" y2="1936" x1="704" />
        </branch>
        <branch name="i11">
            <wire x2="720" y1="1376" y2="1376" x1="560" />
            <wire x2="784" y1="1376" y2="1376" x1="720" />
            <wire x2="720" y1="1376" y2="1872" x1="720" />
            <wire x2="848" y1="1872" y2="1872" x1="720" />
        </branch>
        <branch name="i10">
            <wire x2="736" y1="1440" y2="1440" x1="560" />
            <wire x2="784" y1="1440" y2="1440" x1="736" />
            <wire x2="736" y1="1440" y2="1808" x1="736" />
            <wire x2="848" y1="1808" y2="1808" x1="736" />
        </branch>
        <branch name="i9">
            <wire x2="752" y1="1504" y2="1504" x1="560" />
            <wire x2="784" y1="1504" y2="1504" x1="752" />
            <wire x2="752" y1="1504" y2="1744" x1="752" />
            <wire x2="848" y1="1744" y2="1744" x1="752" />
        </branch>
        <branch name="en">
            <wire x2="768" y1="640" y2="640" x1="560" />
            <wire x2="784" y1="640" y2="640" x1="768" />
            <wire x2="768" y1="640" y2="1312" x1="768" />
            <wire x2="784" y1="1312" y2="1312" x1="768" />
        </branch>
        <instance x="1360" y="512" name="XLXI_3" orien="R0" />
        <instance x="848" y="2192" name="XLXI_6" orien="R0" />
        <instance x="1360" y="1072" name="XLXI_4" orien="R0" />
        <instance x="1360" y="1632" name="XLXI_5" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="1360" y1="1568" y2="1568" x1="1168" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1360" y1="384" y2="384" x1="1168" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1200" y1="1056" y2="1056" x1="1168" />
            <wire x2="1200" y1="448" y2="1056" x1="1200" />
            <wire x2="1360" y1="448" y2="448" x1="1200" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1248" y1="896" y2="896" x1="1168" />
            <wire x2="1248" y1="896" y2="1504" x1="1248" />
            <wire x2="1360" y1="1504" y2="1504" x1="1248" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1296" y1="1312" y2="1312" x1="1168" />
            <wire x2="1296" y1="1008" y2="1312" x1="1296" />
            <wire x2="1360" y1="1008" y2="1008" x1="1296" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1296" y1="640" y2="640" x1="1168" />
            <wire x2="1296" y1="640" y2="944" x1="1296" />
            <wire x2="1360" y1="944" y2="944" x1="1296" />
        </branch>
        <branch name="o2">
            <wire x2="1648" y1="416" y2="416" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="416" name="o2" orien="R0" />
        <branch name="o0">
            <wire x2="1648" y1="976" y2="976" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="976" name="o0" orien="R0" />
        <branch name="o1">
            <wire x2="1648" y1="1536" y2="1536" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1536" name="o1" orien="R0" />
        <branch name="i8">
            <wire x2="768" y1="1568" y2="1568" x1="560" />
            <wire x2="784" y1="1568" y2="1568" x1="768" />
            <wire x2="768" y1="1568" y2="1680" x1="768" />
            <wire x2="848" y1="1680" y2="1680" x1="768" />
        </branch>
        <iomarker fontsize="28" x="560" y="384" name="i7" orien="R180" />
        <iomarker fontsize="28" x="560" y="448" name="i6" orien="R180" />
        <iomarker fontsize="28" x="560" y="512" name="i5" orien="R180" />
        <iomarker fontsize="28" x="560" y="576" name="i4" orien="R180" />
        <iomarker fontsize="28" x="560" y="640" name="en" orien="R180" />
        <iomarker fontsize="28" x="560" y="704" name="i3" orien="R180" />
        <iomarker fontsize="28" x="560" y="768" name="i2" orien="R180" />
        <iomarker fontsize="28" x="560" y="832" name="i1" orien="R180" />
        <iomarker fontsize="28" x="560" y="896" name="i0" orien="R180" />
        <iomarker fontsize="28" x="560" y="1056" name="i15" orien="R180" />
        <iomarker fontsize="28" x="560" y="1120" name="i14" orien="R180" />
        <iomarker fontsize="28" x="560" y="1184" name="i13" orien="R180" />
        <iomarker fontsize="28" x="560" y="1248" name="i12" orien="R180" />
        <iomarker fontsize="28" x="560" y="1376" name="i11" orien="R180" />
        <iomarker fontsize="28" x="560" y="1440" name="i10" orien="R180" />
        <iomarker fontsize="28" x="560" y="1504" name="i9" orien="R180" />
        <iomarker fontsize="28" x="560" y="1568" name="i8" orien="R180" />
        <branch name="o3">
            <wire x2="1120" y1="1904" y2="1904" x1="1104" />
            <wire x2="1648" y1="1904" y2="1904" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1904" name="o3" orien="R0" />
        <text style="fontsize:64;fontname:Courier New" x="796" y="2284">EN ENCODER 4-16</text>
    </sheet>
</drawing>
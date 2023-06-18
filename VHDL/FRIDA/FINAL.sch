<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SA(3:0)" />
        <signal name="SA(0)" />
        <signal name="SA(1)" />
        <signal name="SA(3)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="SALIDA" />
        <signal name="S(1:0)" />
        <signal name="XLXN_21(1:0)" />
        <signal name="EA" />
        <signal name="EB" />
        <signal name="EC" />
        <signal name="SA(2)" />
        <port polarity="Output" name="SA(3:0)" />
        <port polarity="Output" name="SALIDA" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="EA" />
        <port polarity="Input" name="EB" />
        <port polarity="Input" name="EC" />
        <blockdef name="DECO_2_4">
            <timestamp>2023-5-4T0:57:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="EX1">
            <timestamp>2023-5-4T0:58:10</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="DECO_2_4" name="XLXI_1">
            <blockpin signalname="S(1:0)" name="D(1:0)" />
            <blockpin signalname="SA(3:0)" name="S(3:0)" />
        </block>
        <block symbolname="EX1" name="XLXI_2">
            <blockpin signalname="EA" name="A" />
            <blockpin signalname="EB" name="B" />
            <blockpin signalname="EC" name="C" />
            <blockpin signalname="XLXN_13" name="Y0" />
            <blockpin signalname="XLXN_15" name="Y1" />
            <blockpin signalname="XLXN_17" name="Y2" />
            <blockpin signalname="XLXN_18" name="Y3" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="SA(0)" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="SA(1)" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="SA(2)" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="SA(3)" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_7">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_9" name="I3" />
            <blockpin signalname="SALIDA" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SA(3:0)">
            <wire x2="1856" y1="1152" y2="1152" x1="1760" />
            <wire x2="1920" y1="1152" y2="1152" x1="1856" />
            <wire x2="1984" y1="1152" y2="1152" x1="1920" />
            <wire x2="2048" y1="1152" y2="1152" x1="1984" />
            <wire x2="2096" y1="1152" y2="1152" x1="2048" />
        </branch>
        <bustap x2="1856" y1="1152" y2="1248" x1="1856" />
        <bustap x2="1920" y1="1152" y2="1248" x1="1920" />
        <bustap x2="1984" y1="1152" y2="1248" x1="1984" />
        <bustap x2="2048" y1="1152" y2="1248" x1="2048" />
        <branch name="SA(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1344" type="branch" />
            <wire x2="1856" y1="1248" y2="1312" x1="1856" />
            <wire x2="1856" y1="1312" y2="1344" x1="1856" />
            <wire x2="1856" y1="1344" y2="1392" x1="1856" />
        </branch>
        <branch name="SA(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1344" type="branch" />
            <wire x2="1920" y1="1248" y2="1312" x1="1920" />
            <wire x2="1920" y1="1312" y2="1344" x1="1920" />
            <wire x2="1920" y1="1344" y2="1376" x1="1920" />
            <wire x2="1920" y1="1376" y2="1392" x1="1920" />
        </branch>
        <branch name="SA(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1344" type="branch" />
            <wire x2="1984" y1="1248" y2="1312" x1="1984" />
            <wire x2="1984" y1="1312" y2="1344" x1="1984" />
            <wire x2="1984" y1="1344" y2="1392" x1="1984" />
        </branch>
        <branch name="SA(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1344" type="branch" />
            <wire x2="2048" y1="1248" y2="1312" x1="2048" />
            <wire x2="2048" y1="1312" y2="1344" x1="2048" />
            <wire x2="2048" y1="1344" y2="1392" x1="2048" />
        </branch>
        <instance x="2224" y="1568" name="XLXI_3" orien="R0" />
        <instance x="2240" y="1760" name="XLXI_4" orien="R0" />
        <instance x="2240" y="1952" name="XLXI_5" orien="R0" />
        <instance x="2240" y="2128" name="XLXI_6" orien="R0" />
        <instance x="2672" y="1920" name="XLXI_7" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2640" y1="1472" y2="1472" x1="2480" />
            <wire x2="2640" y1="1472" y2="1664" x1="2640" />
            <wire x2="2672" y1="1664" y2="1664" x1="2640" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2592" y1="1664" y2="1664" x1="2496" />
            <wire x2="2592" y1="1664" y2="1728" x1="2592" />
            <wire x2="2672" y1="1728" y2="1728" x1="2592" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2672" y1="2032" y2="2032" x1="2496" />
            <wire x2="2672" y1="1856" y2="2032" x1="2672" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2592" y1="1856" y2="1856" x1="2496" />
            <wire x2="2592" y1="1792" y2="1856" x1="2592" />
            <wire x2="2672" y1="1792" y2="1792" x1="2592" />
        </branch>
        <instance x="1440" y="1872" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="1840" y1="1648" y2="1648" x1="1824" />
            <wire x2="1840" y1="1440" y2="1648" x1="1840" />
            <wire x2="2224" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1920" y1="1712" y2="1712" x1="1824" />
            <wire x2="1920" y1="1600" y2="1712" x1="1920" />
            <wire x2="2240" y1="1600" y2="1600" x1="1920" />
            <wire x2="2240" y1="1600" y2="1632" x1="2240" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2208" y1="1776" y2="1776" x1="1824" />
            <wire x2="2208" y1="1776" y2="1824" x1="2208" />
            <wire x2="2240" y1="1824" y2="1824" x1="2208" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2096" y1="1840" y2="1840" x1="1824" />
            <wire x2="2096" y1="1840" y2="2000" x1="2096" />
            <wire x2="2240" y1="2000" y2="2000" x1="2096" />
        </branch>
        <branch name="SALIDA">
            <wire x2="2960" y1="1760" y2="1760" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="2960" y="1760" name="SALIDA" orien="R0" />
        <branch name="S(1:0)">
            <wire x2="1760" y1="960" y2="960" x1="1296" />
            <wire x2="1296" y1="960" y2="1152" x1="1296" />
            <wire x2="1376" y1="1152" y2="1152" x1="1296" />
            <wire x2="1760" y1="736" y2="736" x1="1408" />
            <wire x2="1760" y1="736" y2="960" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1408" y="736" name="S(1:0)" orien="R180" />
        <branch name="EA">
            <wire x2="1440" y1="1648" y2="1648" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1648" name="EA" orien="R180" />
        <branch name="EB">
            <wire x2="1440" y1="1744" y2="1744" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1744" name="EB" orien="R180" />
        <branch name="EC">
            <wire x2="1440" y1="1840" y2="1840" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1840" name="EC" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1152" name="SA(3:0)" orien="R0" />
        <branch name="SA(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1504" type="branch" />
            <wire x2="2128" y1="1504" y2="1504" x1="2064" />
            <wire x2="2224" y1="1504" y2="1504" x1="2128" />
        </branch>
        <branch name="SA(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1696" type="branch" />
            <wire x2="2128" y1="1696" y2="1696" x1="2080" />
            <wire x2="2240" y1="1696" y2="1696" x1="2128" />
        </branch>
        <branch name="SA(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1888" type="branch" />
            <wire x2="2160" y1="1888" y2="1888" x1="2144" />
            <wire x2="2240" y1="1888" y2="1888" x1="2160" />
        </branch>
        <branch name="SA(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="2064" type="branch" />
            <wire x2="2160" y1="2064" y2="2064" x1="2128" />
            <wire x2="2240" y1="2064" y2="2064" x1="2160" />
        </branch>
    </sheet>
</drawing>
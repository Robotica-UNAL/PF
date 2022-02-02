MODULE Module1
    CONST robtarget Target_40:=[[1194.222437648,1719.116935891,-421.060586657],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2:=[[1427.831176606,1538.974109877,-483.624799809],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[1503.38015617,1719.116935891,-483.624799809],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[1290.709174046,1719.116935891,-483.624799809],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[1503.38015617,1719.116935891,-421.060586657],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_116:=[[-459.02228673,396.851574916,103.199091019],[0,1,0,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[89.795862793,807.903026489,158.070731787],[0.27059805,0.653281482,0.653281482,-0.27059805],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[89.795862793,-61.349193592,116.870736622],[0.27059805,0.653281482,0.653281482,-0.27059805],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[89.795862793,807.903026489,158.070731787],[0.27059805,0.653281482,-0.653281482,0.27059805],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[69.232159639,-65.996280684,110.136354697],[0.27059805,0.653281482,-0.653281482,0.27059805],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[69.232159639,-65.996280684,421.381271364],[0.27059805,0.653281482,-0.653281482,0.27059805],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_101:=[[-473.857879989,-640.381005845,421.381271364],[0.27059805,0.653281482,-0.653281482,0.27059805],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_102:=[[-473.857879989,919.426085404,421.381271364],[0.27059805,0.653281482,-0.653281482,0.27059805],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_103:=[[38.503676622,607.188636194,48.172191592],[0.5,0.5,-0.5,0.5],[-1,-2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_104:=[[38.503676622,389.042988036,48.172191592],[0.5,0.5,-0.5,0.5],[-1,-2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_105:=[[-364.813749005,563.157374351,48.172191592],[0.5,0.5,-0.5,0.5],[-1,-2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_106:=[[-364.813749005,389.042988036,48.172191592],[0.5,0.5,-0.5,0.5],[-1,-2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[1329.452483503,1719.116935891,737.346379122],[0.707106801,0.000000017,0.707106762,0.00000004],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_117:=[[-439.577,391.2792093,442.520040861],[0,1,0,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_118:=[[1091.640237146,600.08,1752.241000261],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_107:=[[-1041.861463116,389.042988036,48.172191592],[0.5,0.5,-0.5,0.5],[-1,-2,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        Path_Recogida;
        Path_Corte_fresado;
        Path_Banda_trans;
    ENDPROC

    PROC Path_Recogida()
        SetDO Q_Inyect,1;
        SetDO Q_Inyect,0;
        MoveJ Target_50,v1000,z15,Ventosas\WObj:=WO_recogida;
        MoveL Target_20,v500,fine,Ventosas\WObj:=WO_recogida;
        MoveL Target_10,v500,fine,Ventosas\WObj:=WO_recogida;
        SetDO Q_Ventosa, 1;
        WaitTime 1;
        MoveL Target_30,v500,fine,Ventosas\WObj:=WO_recogida;
        MoveL Target_40,v500,fine,Ventosas\WObj:=WO_recogida;
        MoveJ Target_50,v1000,z15,Ventosas\WObj:=WO_recogida;
    ENDPROC

    PROC Path_Corte_fresado()
        MoveJ Target_70,v1000,z15,Gripper\WObj:=WO_corte_y_fresado;
        MoveL Target_60,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        WaitTime 1;
        MoveL Target_70,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        MoveL Target_80,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        MoveL Target_90,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        WaitTime 1;
        MoveL Target_100,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        MoveL Target_101,v500,fine,Gripper\WObj:=WO_corte_y_fresado;
        WaitTime 1;
        MoveL Target_102,v1000,fine,Gripper\WObj:=WO_corte_y_fresado;
        MoveL Target_103,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_104,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_103,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_105,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_106,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_105,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
        MoveL Target_107,v500,fine,Ventosas\WObj:=WO_corte_y_fresado;
    ENDPROC

    PROC Path_Banda_trans()
        MoveJ Target_117,v1000,z15,Ventosas\WObj:=WO_Banda_trans;
        MoveL Target_116,v500,fine,Ventosas\WObj:=WO_Banda_trans;
        SetDO Q_Ventosa, 0;
        WaitTime 1;
        MoveL Target_117,v1000,z15,Ventosas\WObj:=WO_Banda_trans;
        MoveJ Target_118,v1000,z15,Ventosas\WObj:=WO_Banda_trans;
    ENDPROC
ENDMODULE
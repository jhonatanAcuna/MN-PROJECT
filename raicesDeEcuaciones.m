classdef raicesDeEcuaciones < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                    matlab.ui.Figure
        principalPanel              matlab.ui.container.Panel
        RacesdeEcuacionesLabel      matlab.ui.control.Label
        CreadoresLabel              matlab.ui.control.Label
        empezarB                    matlab.ui.control.Button
        salirB                      matlab.ui.control.Button
        menu1Panel                  matlab.ui.container.Panel
        titulo_menu1                matlab.ui.control.Label
        homeB_menu1                 matlab.ui.control.Button
        calculadoraB_menu1          matlab.ui.control.Button
        evaluacionB_menu1           matlab.ui.control.Button
        ejerciciosB_menu1           matlab.ui.control.Button
        teoriaB_menu1               matlab.ui.control.Button
        teoriaPanel                 matlab.ui.container.Panel
        TabGroup                    matlab.ui.container.TabGroup
        BiseccionTab                matlab.ui.container.Tab
        tituloBiseccion             matlab.ui.control.Label
        RegulaFalsiTab              matlab.ui.container.Tab
        tituloRegula                matlab.ui.control.Label
        PuntoFijoTab                matlab.ui.container.Tab
        tituloPunto                 matlab.ui.control.Label
        NewtonRaphsonTab            matlab.ui.container.Tab
        tituloSecante               matlab.ui.control.Label
        SecanteTab                  matlab.ui.container.Tab
        tituloPunto_2               matlab.ui.control.Label
        RaicesMultiplesTab          matlab.ui.container.Tab
        tituloPunto_3               matlab.ui.control.Label
        ejerciciosPanel             matlab.ui.container.Panel
        TabGroup2                   matlab.ui.container.TabGroup
        BiseccionTab_2              matlab.ui.container.Tab
        tituloBiseccion_ejercicios  matlab.ui.control.Label
        RegulaFalsiTab_2            matlab.ui.container.Tab
        tituloRegula_ejercicios     matlab.ui.control.Label
        PuntoFijoTab_2              matlab.ui.container.Tab
        tituloPunto_ejercicios      matlab.ui.control.Label
        NewtonRaphsonTab_2          matlab.ui.container.Tab
        tituloNewton_ejercicios     matlab.ui.control.Label
        SecanteTab_2                matlab.ui.container.Tab
        tituloSecante_ejercicios    matlab.ui.control.Label
        RaicesMultiplesTab_2        matlab.ui.container.Tab
        tituloRaices_ejercicios     matlab.ui.control.Label
        calculadoraPanel            matlab.ui.container.Panel
        TecladoLabel                matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: empezarB
        function empezarBButtonPushed(app, event)
            app.principalPanel.Visible = 'off';    %apagar el principal
            app.menu1Panel.Visible = 'on';         %encender el menu
            app.teoriaPanel.Visible = 'on';        %encender el panel de teoria
        end

        % Button pushed function: salirB
        function salirBButtonPushed(app, event)
            app.delete;
        end

        % Callback function
        function salirB_teoriaButtonPushed(app, event)

        end

        % Button pushed function: homeB_menu1
        function homeB_menu1ButtonPushed(app, event)
            app.principalPanel.Visible = 'on';
            app.menu1Panel.Visible = 'off';
            
            
            %apagar todas las demas ventaas here
            app.teoriaPanel.Visible = "off";           %mantener el panel de teoria off
            app.ejerciciosPanel.Visible = 'off';       %mantener el panel de calculadora off
            app.calculadoraPanel.Visible = 'off';      %mantener el panel de calculadora off
        end

        % Button pushed function: teoriaB_menu1
        function teoriaB_menu1ButtonPushed(app, event)
            
            app.titulo_menu1.Text = "Teoría";         %cambiar el nombre del titulo
            
            app.principalPanel.Visible = 'off';
            app.menu1Panel.Visible = 'on';            %mantener encendido el menu
            app.teoriaPanel.Visible = "on";           %mantener el panel de teoria on
            
            %apagar todas las demas ventaas here
            app.ejerciciosPanel.Visible = "off";       %mantener el panel de teoria off
            app.calculadoraPanel.Visible = 'off';      %mantener el panel de calculadora off
        end

        % Button pushed function: ejerciciosB_menu1
        function ejerciciosB_menu1ButtonPushed(app, event)
            
            app.titulo_menu1.Text = "Ejercicios";     %cambiar el nombre del titulo
            
            app.principalPanel.Visible = 'off';
            app.menu1Panel.Visible = 'on';            %mantener encendido el menu
            app.ejerciciosPanel.Visible = 'on';       %mantener encendido el de ejercicios
            
            app.teoriaPanel.Visible = "off";          %mantener el panel de teoria off
            app.calculadoraPanel.Visible = 'off';      %mantener el panel de calculadora off
        end

        % Button pushed function: calculadoraB_menu1
        function calculadoraB_menu1ButtonPushed(app, event)
            
            app.titulo_menu1.Text = "Calculadora";    %cambiar el nombre del titulo
            
            app.principalPanel.Visible = 'off';
            app.calculadoraPanel.Visible = 'on';      %mantener encendido la calculadora
            
            app.teoriaPanel.Visible = "off";          %mantener el panel de teoria off
            app.ejerciciosPanel.Visible = 'off';      %mantener el panel de ejercicios off

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create principalPanel
            app.principalPanel = uipanel(app.UIFigure);
            app.principalPanel.BackgroundColor = [0.1882 0.2 0.2784];
            app.principalPanel.Tag = 'principal';
            app.principalPanel.Position = [1 1 640 480];

            % Create RacesdeEcuacionesLabel
            app.RacesdeEcuacionesLabel = uilabel(app.principalPanel);
            app.RacesdeEcuacionesLabel.FontName = 'Sitka Display';
            app.RacesdeEcuacionesLabel.FontSize = 80;
            app.RacesdeEcuacionesLabel.FontWeight = 'bold';
            app.RacesdeEcuacionesLabel.FontColor = [1 1 1];
            app.RacesdeEcuacionesLabel.Position = [33 155 387 200];
            app.RacesdeEcuacionesLabel.Text = {'Raíces de '; 'Ecuaciones'};

            % Create CreadoresLabel
            app.CreadoresLabel = uilabel(app.principalPanel);
            app.CreadoresLabel.FontName = 'Sitka Display';
            app.CreadoresLabel.FontSize = 15;
            app.CreadoresLabel.FontColor = [1 1 1];
            app.CreadoresLabel.Position = [33 10 181 114];
            app.CreadoresLabel.Text = {'Creadores:'; '  Sergio Yhoel Soncco Cahui.  '; '  Jhonatan Acuña Huisacayna'; '  Bryan Gallegos Batallanos'; '  Frank Ccapa Usca'; '  Luis Flores Bailon'};

            % Create empezarB
            app.empezarB = uibutton(app.principalPanel, 'push');
            app.empezarB.ButtonPushedFcn = createCallbackFcn(app, @empezarBButtonPushed, true);
            app.empezarB.Tag = 'empezarB';
            app.empezarB.BackgroundColor = [0.9686 0.6706 0.1294];
            app.empezarB.FontName = 'Sitka Display';
            app.empezarB.FontSize = 20;
            app.empezarB.FontColor = [0.1882 0.2 0.2784];
            app.empezarB.Position = [505 67 100 33];
            app.empezarB.Text = 'Empezar';

            % Create salirB
            app.salirB = uibutton(app.principalPanel, 'push');
            app.salirB.ButtonPushedFcn = createCallbackFcn(app, @salirBButtonPushed, true);
            app.salirB.BackgroundColor = [0.9686 0.6706 0.1294];
            app.salirB.FontName = 'Sitka Display';
            app.salirB.FontSize = 20;
            app.salirB.FontColor = [0.1882 0.2039 0.2784];
            app.salirB.Position = [505 23 100 33];
            app.salirB.Text = 'Salir';

            % Create menu1Panel
            app.menu1Panel = uipanel(app.UIFigure);
            app.menu1Panel.BorderType = 'none';
            app.menu1Panel.Visible = 'off';
            app.menu1Panel.BackgroundColor = [0.1882 0.2 0.2784];
            app.menu1Panel.Tag = 'menu1';
            app.menu1Panel.Position = [1 420 640 61];

            % Create titulo_menu1
            app.titulo_menu1 = uilabel(app.menu1Panel);
            app.titulo_menu1.Tag = 'titulo_menu1';
            app.titulo_menu1.FontName = 'Sitka Display';
            app.titulo_menu1.FontSize = 40;
            app.titulo_menu1.FontColor = [1 1 1];
            app.titulo_menu1.Position = [12 0 211 51];
            app.titulo_menu1.Text = 'Teoría';

            % Create homeB_menu1
            app.homeB_menu1 = uibutton(app.menu1Panel, 'push');
            app.homeB_menu1.ButtonPushedFcn = createCallbackFcn(app, @homeB_menu1ButtonPushed, true);
            app.homeB_menu1.Tag = 'homeB_menu1';
            app.homeB_menu1.BackgroundColor = [0.9686 0.6706 0.1294];
            app.homeB_menu1.FontName = 'Sitka Display';
            app.homeB_menu1.FontSize = 17;
            app.homeB_menu1.FontColor = [0.1882 0.2 0.2784];
            app.homeB_menu1.Position = [581 17 51 28];
            app.homeB_menu1.Text = 'Home';

            % Create calculadoraB_menu1
            app.calculadoraB_menu1 = uibutton(app.menu1Panel, 'push');
            app.calculadoraB_menu1.ButtonPushedFcn = createCallbackFcn(app, @calculadoraB_menu1ButtonPushed, true);
            app.calculadoraB_menu1.Tag = 'calculadoraB_menu1';
            app.calculadoraB_menu1.BackgroundColor = [0.9686 0.6706 0.1294];
            app.calculadoraB_menu1.FontName = 'Sitka Display';
            app.calculadoraB_menu1.FontSize = 17;
            app.calculadoraB_menu1.FontColor = [0.1882 0.2 0.2784];
            app.calculadoraB_menu1.Position = [488 16 86 29];
            app.calculadoraB_menu1.Text = 'Calculadora';

            % Create evaluacionB_menu1
            app.evaluacionB_menu1 = uibutton(app.menu1Panel, 'push');
            app.evaluacionB_menu1.Tag = 'evaluacionB_menu1';
            app.evaluacionB_menu1.BackgroundColor = [0.9686 0.6706 0.1294];
            app.evaluacionB_menu1.FontName = 'Sitka Display';
            app.evaluacionB_menu1.FontSize = 17;
            app.evaluacionB_menu1.FontColor = [0.1882 0.2 0.2784];
            app.evaluacionB_menu1.Position = [396 15 85 29];
            app.evaluacionB_menu1.Text = 'Evaluación';

            % Create ejerciciosB_menu1
            app.ejerciciosB_menu1 = uibutton(app.menu1Panel, 'push');
            app.ejerciciosB_menu1.ButtonPushedFcn = createCallbackFcn(app, @ejerciciosB_menu1ButtonPushed, true);
            app.ejerciciosB_menu1.Tag = 'ejerciciosB_menu1';
            app.ejerciciosB_menu1.BackgroundColor = [0.9686 0.6706 0.1294];
            app.ejerciciosB_menu1.FontName = 'Sitka Display';
            app.ejerciciosB_menu1.FontSize = 17;
            app.ejerciciosB_menu1.FontColor = [0.1882 0.2 0.2784];
            app.ejerciciosB_menu1.Position = [314 15 73 29];
            app.ejerciciosB_menu1.Text = 'Ejercicios';

            % Create teoriaB_menu1
            app.teoriaB_menu1 = uibutton(app.menu1Panel, 'push');
            app.teoriaB_menu1.ButtonPushedFcn = createCallbackFcn(app, @teoriaB_menu1ButtonPushed, true);
            app.teoriaB_menu1.Tag = 'teoriaB_menu1';
            app.teoriaB_menu1.BackgroundColor = [0.9686 0.6706 0.1294];
            app.teoriaB_menu1.FontName = 'Sitka Display';
            app.teoriaB_menu1.FontSize = 17;
            app.teoriaB_menu1.FontColor = [0.1882 0.2 0.2784];
            app.teoriaB_menu1.Position = [232 15 73 29];
            app.teoriaB_menu1.Text = 'Teoría';

            % Create teoriaPanel
            app.teoriaPanel = uipanel(app.UIFigure);
            app.teoriaPanel.Visible = 'off';
            app.teoriaPanel.BackgroundColor = [0.8 0.8 0.8];
            app.teoriaPanel.Scrollable = 'on';
            app.teoriaPanel.Position = [1 1 640 420];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.teoriaPanel);
            app.TabGroup.Position = [1 0 639 411];

            % Create BiseccionTab
            app.BiseccionTab = uitab(app.TabGroup);
            app.BiseccionTab.Title = ' Biseccion  ';
            app.BiseccionTab.BackgroundColor = [1 1 1];
            app.BiseccionTab.Tag = 'biseccionTab_teoria';
            app.BiseccionTab.Scrollable = 'on';

            % Create tituloBiseccion
            app.tituloBiseccion = uilabel(app.BiseccionTab);
            app.tituloBiseccion.Tag = 'titulo_menu1';
            app.tituloBiseccion.FontName = 'Sitka Display';
            app.tituloBiseccion.FontSize = 40;
            app.tituloBiseccion.FontColor = [0.149 0.149 0.149];
            app.tituloBiseccion.Position = [102 327 435 51];
            app.tituloBiseccion.Text = 'Método cerrado Bisección ';

            % Create RegulaFalsiTab
            app.RegulaFalsiTab = uitab(app.TabGroup);
            app.RegulaFalsiTab.Title = ' Regula Falsi ';
            app.RegulaFalsiTab.BackgroundColor = [1 1 1];
            app.RegulaFalsiTab.Tag = 'regulaTab_teoria';
            app.RegulaFalsiTab.Scrollable = 'on';

            % Create tituloRegula
            app.tituloRegula = uilabel(app.RegulaFalsiTab);
            app.tituloRegula.Tag = 'titulo_menu1';
            app.tituloRegula.FontName = 'Sitka Display';
            app.tituloRegula.FontSize = 40;
            app.tituloRegula.FontColor = [0.149 0.149 0.149];
            app.tituloRegula.Position = [86 327 460 51];
            app.tituloRegula.Text = 'Método cerrado Regula Falsi';

            % Create PuntoFijoTab
            app.PuntoFijoTab = uitab(app.TabGroup);
            app.PuntoFijoTab.Title = ' Punto Fijo ';
            app.PuntoFijoTab.BackgroundColor = [1 1 1];
            app.PuntoFijoTab.Tag = 'puntoTab_teoria';
            app.PuntoFijoTab.Scrollable = 'on';

            % Create tituloPunto
            app.tituloPunto = uilabel(app.PuntoFijoTab);
            app.tituloPunto.Tag = 'titulo_menu1';
            app.tituloPunto.FontName = 'Sitka Display';
            app.tituloPunto.FontSize = 40;
            app.tituloPunto.FontColor = [0.149 0.149 0.149];
            app.tituloPunto.Position = [101 327 435 51];
            app.tituloPunto.Text = 'Método abierto Punto fijo ';

            % Create NewtonRaphsonTab
            app.NewtonRaphsonTab = uitab(app.TabGroup);
            app.NewtonRaphsonTab.Title = ' Newton-Raphson ';
            app.NewtonRaphsonTab.BackgroundColor = [1 1 1];
            app.NewtonRaphsonTab.Tag = 'newtonTab_teoria';
            app.NewtonRaphsonTab.Scrollable = 'on';

            % Create tituloSecante
            app.tituloSecante = uilabel(app.NewtonRaphsonTab);
            app.tituloSecante.Tag = 'titulo_menu1';
            app.tituloSecante.FontName = 'Sitka Display';
            app.tituloSecante.FontSize = 40;
            app.tituloSecante.FontColor = [0.149 0.149 0.149];
            app.tituloSecante.Position = [49 327 540 51];
            app.tituloSecante.Text = 'Método abierto Newton-Raphson';

            % Create SecanteTab
            app.SecanteTab = uitab(app.TabGroup);
            app.SecanteTab.Title = ' Secante ';
            app.SecanteTab.BackgroundColor = [1 1 1];
            app.SecanteTab.Tag = 'secanteTab_teoria';
            app.SecanteTab.Scrollable = 'on';

            % Create tituloPunto_2
            app.tituloPunto_2 = uilabel(app.SecanteTab);
            app.tituloPunto_2.Tag = 'titulo_menu1';
            app.tituloPunto_2.FontName = 'Sitka Display';
            app.tituloPunto_2.FontSize = 40;
            app.tituloPunto_2.FontColor = [0.149 0.149 0.149];
            app.tituloPunto_2.Position = [84 327 469 51];
            app.tituloPunto_2.Text = 'Método abierto de la Secante';

            % Create RaicesMultiplesTab
            app.RaicesMultiplesTab = uitab(app.TabGroup);
            app.RaicesMultiplesTab.Title = ' Raices Multiples ';
            app.RaicesMultiplesTab.BackgroundColor = [1 1 1];
            app.RaicesMultiplesTab.Tag = 'raicesTab_teoria';
            app.RaicesMultiplesTab.Scrollable = 'on';

            % Create tituloPunto_3
            app.tituloPunto_3 = uilabel(app.RaicesMultiplesTab);
            app.tituloPunto_3.Tag = 'titulo_menu1';
            app.tituloPunto_3.FontName = 'Sitka Display';
            app.tituloPunto_3.FontSize = 40;
            app.tituloPunto_3.FontColor = [0.149 0.149 0.149];
            app.tituloPunto_3.Position = [29 327 579 51];
            app.tituloPunto_3.Text = 'Método abierto de Raices Multiples ';

            % Create ejerciciosPanel
            app.ejerciciosPanel = uipanel(app.UIFigure);
            app.ejerciciosPanel.Visible = 'off';
            app.ejerciciosPanel.Position = [2 2 638 418];

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.ejerciciosPanel);
            app.TabGroup2.Position = [1 -1 637 411];

            % Create BiseccionTab_2
            app.BiseccionTab_2 = uitab(app.TabGroup2);
            app.BiseccionTab_2.Title = ' Biseccion  ';
            app.BiseccionTab_2.BackgroundColor = [1 1 1];

            % Create tituloBiseccion_ejercicios
            app.tituloBiseccion_ejercicios = uilabel(app.BiseccionTab_2);
            app.tituloBiseccion_ejercicios.Tag = 'titulo_menu1';
            app.tituloBiseccion_ejercicios.FontName = 'Sitka Display';
            app.tituloBiseccion_ejercicios.FontSize = 40;
            app.tituloBiseccion_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloBiseccion_ejercicios.Position = [101 327 435 51];
            app.tituloBiseccion_ejercicios.Text = 'Método cerrado Bisección ';

            % Create RegulaFalsiTab_2
            app.RegulaFalsiTab_2 = uitab(app.TabGroup2);
            app.RegulaFalsiTab_2.Title = ' Regula Falsi ';
            app.RegulaFalsiTab_2.BackgroundColor = [1 1 1];

            % Create tituloRegula_ejercicios
            app.tituloRegula_ejercicios = uilabel(app.RegulaFalsiTab_2);
            app.tituloRegula_ejercicios.Tag = 'titulo_menu1';
            app.tituloRegula_ejercicios.FontName = 'Sitka Display';
            app.tituloRegula_ejercicios.FontSize = 40;
            app.tituloRegula_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloRegula_ejercicios.Position = [89 327 460 51];
            app.tituloRegula_ejercicios.Text = 'Método cerrado Regula Falsi';

            % Create PuntoFijoTab_2
            app.PuntoFijoTab_2 = uitab(app.TabGroup2);
            app.PuntoFijoTab_2.Title = ' Punto Fijo ';
            app.PuntoFijoTab_2.BackgroundColor = [1 1 1];

            % Create tituloPunto_ejercicios
            app.tituloPunto_ejercicios = uilabel(app.PuntoFijoTab_2);
            app.tituloPunto_ejercicios.Tag = 'titulo_menu1';
            app.tituloPunto_ejercicios.FontName = 'Sitka Display';
            app.tituloPunto_ejercicios.FontSize = 40;
            app.tituloPunto_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloPunto_ejercicios.Position = [100 327 435 51];
            app.tituloPunto_ejercicios.Text = 'Método abierto Punto Fijo ';

            % Create NewtonRaphsonTab_2
            app.NewtonRaphsonTab_2 = uitab(app.TabGroup2);
            app.NewtonRaphsonTab_2.Title = ' Newton-Raphson ';
            app.NewtonRaphsonTab_2.BackgroundColor = [1 1 1];

            % Create tituloNewton_ejercicios
            app.tituloNewton_ejercicios = uilabel(app.NewtonRaphsonTab_2);
            app.tituloNewton_ejercicios.Tag = 'titulo_menu1';
            app.tituloNewton_ejercicios.FontName = 'Sitka Display';
            app.tituloNewton_ejercicios.FontSize = 40;
            app.tituloNewton_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloNewton_ejercicios.Position = [43 327 550 51];
            app.tituloNewton_ejercicios.Text = 'Método abierto Newton-Raphson ';

            % Create SecanteTab_2
            app.SecanteTab_2 = uitab(app.TabGroup2);
            app.SecanteTab_2.Title = ' Secante ';
            app.SecanteTab_2.BackgroundColor = [1 1 1];

            % Create tituloSecante_ejercicios
            app.tituloSecante_ejercicios = uilabel(app.SecanteTab_2);
            app.tituloSecante_ejercicios.Tag = 'titulo_menu1';
            app.tituloSecante_ejercicios.FontName = 'Sitka Display';
            app.tituloSecante_ejercicios.FontSize = 40;
            app.tituloSecante_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloSecante_ejercicios.Position = [78 327 479 51];
            app.tituloSecante_ejercicios.Text = 'Método abierto de la Secante ';

            % Create RaicesMultiplesTab_2
            app.RaicesMultiplesTab_2 = uitab(app.TabGroup2);
            app.RaicesMultiplesTab_2.Title = 'Raices Multiples';
            app.RaicesMultiplesTab_2.BackgroundColor = [1 1 1];

            % Create tituloRaices_ejercicios
            app.tituloRaices_ejercicios = uilabel(app.RaicesMultiplesTab_2);
            app.tituloRaices_ejercicios.Tag = 'titulo_menu1';
            app.tituloRaices_ejercicios.FontName = 'Sitka Display';
            app.tituloRaices_ejercicios.FontSize = 40;
            app.tituloRaices_ejercicios.FontColor = [0.149 0.149 0.149];
            app.tituloRaices_ejercicios.Position = [52 327 531 51];
            app.tituloRaices_ejercicios.Text = 'Método abierto Raíces Múltiples ';

            % Create calculadoraPanel
            app.calculadoraPanel = uipanel(app.UIFigure);
            app.calculadoraPanel.Visible = 'off';
            app.calculadoraPanel.Position = [1 2 638 418];

            % Create TecladoLabel
            app.TecladoLabel = uilabel(app.calculadoraPanel);
            app.TecladoLabel.FontName = 'Sitka Display';
            app.TecladoLabel.FontSize = 17;
            app.TecladoLabel.FontWeight = 'bold';
            app.TecladoLabel.Position = [11 385 81 25];
            app.TecladoLabel.Text = 'Teclado';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = raicesDeEcuaciones

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
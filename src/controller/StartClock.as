package controller
{
    import model.ClockModel;

    import view.AnalogClock;
    import view.DigitalClock;

    import org.robotlegs.mvcs.Command;

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    /**
     * @author Simone Vicentini
     */
    public class StartClock extends Command
    {
        [Inject]
        public var clockModel:ClockModel;

        override public function execute():void
        {
            contextView.stage.scaleMode = StageScaleMode.NO_SCALE;
            contextView.stage.align = StageAlign.TOP_LEFT;
            clockModel.start();
            var analog:Sprite = new AnalogClock();
            var digital:Sprite = new DigitalClock();
            contextView.addChild(analog);
            contextView.addChild(digital);
            var appMediator:ClockAppMediator = mediatorMap.retrieveMediator(contextView) as ClockAppMediator;
            appMediator.alignChildren();
        }
    }
}

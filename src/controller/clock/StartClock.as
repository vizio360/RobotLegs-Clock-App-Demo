package controller.clock
{
    import model.ClockModel;

    import view.AnalogClock;
    import view.DigitalClock;

    import org.robotlegs.mvcs.Command;

    import flash.display.Sprite;

    /**
     * @author Simone Vicentini
     */
    public class StartClock extends Command
    {
        [Inject]
        public var clockModel:ClockModel;

        override public function execute():void
        {
            clockModel.start();
        }
    }
}

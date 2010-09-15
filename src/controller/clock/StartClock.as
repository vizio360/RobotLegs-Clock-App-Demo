package controller.clock
{
    import model.ClockModel;

    import org.robotlegs.mvcs.Command;

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

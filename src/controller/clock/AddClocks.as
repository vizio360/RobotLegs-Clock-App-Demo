package controller.clock
{
    import view.AnalogClock;
    import view.DigitalClock;

    import org.robotlegs.mvcs.Command;

    /**
     * @author Simone Vicentini
     */
    public class AddClocks extends Command
    {
        override public function execute():void
        {
            contextView.addChild(new AnalogClock());
            contextView.addChild(new DigitalClock());

        }
    }
}

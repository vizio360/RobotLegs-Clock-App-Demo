package controller
{
    import org.robotlegs.mvcs.Command;

    /**
     * @author Simone Vicentini
     */
    public class AlignClocksOnStage extends Command
    {
        override public function execute():void
        {
            var appMediator:ClockAppMediator = mediatorMap.retrieveMediator(contextView) as ClockAppMediator;
            appMediator.alignChildren();
        }
    }
}

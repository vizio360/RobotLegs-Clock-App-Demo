package controller.stage
{
    import org.robotlegs.mvcs.Command;

    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    /**
     * @author Simone Vicentini
     */
    public class SetupStage extends Command
    {
        override public function execute():void
        {
            contextView.stage.scaleMode = StageScaleMode.NO_SCALE;
            contextView.stage.align = StageAlign.TOP_LEFT;
        }
    }
}

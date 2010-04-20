package controller.swfprofiler
{
    import com.flashdynamix.utils.SWFProfiler;

    import org.robotlegs.mvcs.Command;

    /**
     * @author Simone Vicentini
     */
    public class SetupSwfProfiler extends Command
    {
        override public function execute():void
        {
            SWFProfiler.init(contextView.stage, contextView);
        }
    }
}

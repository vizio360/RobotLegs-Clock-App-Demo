package view
{
    import flash.events.IEventDispatcher;

    /**
     * @author Simone Vicentini
     */
    public interface Clock extends IEventDispatcher
    {
        function set hour(hour:int):void;
        function set minutes(minutes:int):void;
        function set seconds(seconds:int):void;
        function set x(x:Number):void;
        function set y(y:Number):void;
    }
}

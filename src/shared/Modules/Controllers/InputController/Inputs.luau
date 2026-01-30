return {





    KeyCode = {
        ["F"] = {
            fn = function(actionName: string, inputState: Enum.UserInputState, inputObject)

            end,
        }
    },

    UserInputType = {
        ["MouseButton1"] = {
            fn = function(actionName: string, inputState: Enum.UserInputState, inputObject)
                if inputState == Enum.UserInputState.Begin then return end

                print("HELLO!");

            end,
        }
    }

}
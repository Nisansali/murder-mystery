import React, { Component } from 'react';
import CluesCheckGameInstructions from '../../../general/tips-n-messages/CluesCheckGameInstructions';
import CluesCheckGameTip from '../../../general/tips-n-messages/CluesCheckGameTip';
import ChangePageButtons from '../../../general/buttons/ChangePageButtons'
import CluesTable from '../../../general/clues/CluesTable';

export default class ClueHints extends Component {
    componentDidMount() {
        this.props.scrollToTop();
    }

    render() {
        const { round, game, player, pageDbIndex, min } = this.props;

        return (
            <div>
                <h3>Hints and keeping track of Clues</h3>

                <p>
                    During the discussion, you will see a table with a reminder of your unique clues, and hints about the unique clues of the other players.
                </p>

                <p>
                    Reminder: In order to have the best shot at solving the game you need to collect as many clues as possible from the other players.
                </p>

                <br />

                <div className="game-instructions">
                    <p>
                        Please see below for a preview of this table that will appear later on in the discussion. There is no need to work on it now. This is simply for demonstration.
                    </p>
                </div>

                <br />

                <CluesCheckGameInstructions />

                <br />

                <CluesTable {...this.props} />

                <br />

                <CluesCheckGameTip />

                <br />

                <ChangePageButtons player={player} pageDbIndex={pageDbIndex} min={min} />

            </div>
        )
    }
}
class TimeMachineGallery extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            images: [],
            currentIndex: 0
        };
    }
    
    render() {
        return (
            <div className="TimeMachineGallery">
                <DateInput onDateChange={this.handleDateChange} />
                <ImageDisplay imageUrl={this.state.images[this.state.currentIndex]} />
            </div>
        );
    }
    
}

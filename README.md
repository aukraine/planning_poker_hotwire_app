# Planning PokerHotwire App

Planning Poker App based on Hotwire technology

## Video Demonstration
![screencast.gif](docs%2Fscreencast.gif)

## How to run project locally

**1. after cloning repo install all dependencies**
> bundle install

**2. copy development secret key (it should be shared via some secret manager tool instead)**
> cp config/master.key.template config/master.key

**3. migrate Data Base**
> rails db:migrate

**4. substitute DB with default data**
> rails db:seed --trace

**6. precompile assets**
> SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

**6. run the server**
> rails s

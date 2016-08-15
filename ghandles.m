function h = ghandles(varargin)
% Graphics handle placeholders compatible across MATLAB versions.

% Yul Kang (c) 2016. hk2699 at columbia dot edu.

if verLessThan('matlab', '8.4')
    h = zeros(varargin{:});
else
    h = gobjects(varargin{:});
end
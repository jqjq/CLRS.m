function cost = online_hiring(a)
    best = -Inf;
    cost = 0;
    for i = 1:length(a)
        if a(i) > best
            best = a(i);
            cost = cost + 1;
        end
    end
end
    "def OnLineMaximum(k, candidates):\n",
    "    bestscore = max(candidates[:k])\n",
    "    for i, cand in enumerate(candidates[k:], start=k):\n",
    "        if cand > bestscore:\n",
    "            return i\n",
    "    return i"